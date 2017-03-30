/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Helper.ExperimentType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Level;
import org.rosuda.REngine.*;
import org.rosuda.REngine.Rserve.*;

/**
 *
 * @author William
 */
public class Experiment {
    private ExperimentType experimentType;
    private Logger logger;
    private double idealProb;
    private double actualProb;
    private RConnection connection;
    private REXP expression;
    private int id;
    private double numSuccess;
    private double mean;
    private double median;
    private double mode;
    private double sd;
    private String xGroup;
    private ArrayList resultList = new ArrayList();
    public Experiment(){
        
    }
    
    //Hypergeometric
    public ExperimentResult hypergeometric(int id,int x, int nn, int m, int n, int k, String object) throws IOException{
        this.id = id;
        logger = new Logger();
        connection = null;
        expression = null;
        actualProb = 0;
        idealProb = 0;
        try {
            //double x = (1.0*combination(6, 4) * combination(14, 1)) / combination(20, 5);
            connection = new RConnection();
            expression = connection.eval("rhyper("+nn+","+m+","+n+","+k+")");
            int[] results = expression.asIntegers();
            for (int i = 0; i < results.length; i++){
                //If number drawn/taken is equal to number expected, actualProb + 1
                if(results[i] == x){
                    actualProb++;
                }
                    resultList.add(results[i]);
                //System.out.println(results[i]);
            }
                xGroup = "x<-c(";
                for(int j = 0; j < results.length-1; j++){
                    xGroup+=results[j]+",";
                }
                xGroup+=results[results.length-1] + ")";
                connection.voidEval(xGroup);
                
                connection.voidEval("png(filename=\"C:/Users/Paolo/Documents/ST-STAT-MCO2/STAT MCO2/build/web/images/barActual.png\")");
                connection.voidEval("y<-barplot(table(x));graphics.off()");
                connection.voidEval("png(filename=\"C:/Users/Paolo/Documents/ST-STAT-MCO2/STAT MCO2/build/web/images/barIdeal.png\")");
                connection.voidEval("y<-barplot((dhyper(0:"+(m)+","+m+","+n+","+k+")),space=10);graphics.off()");
                
                
                expression = connection.eval("mean(x)");
                mean = expression.asDouble();
                expression = connection.eval("median(x)");
                median = expression.asDouble();
                expression = connection.eval("sd(x)");
                sd = expression.asDouble();
                connection.voidEval("getmode <- function(v) {\n" +
"   uniqv <- unique(v)\n" +
"   uniqv[which.max(tabulate(match(v, uniqv)))]\n" +
"}");
                expression = connection.eval("getmode(x)");
                mode = expression.asDouble();
                System.out.println("MEAN : " + mean + " MEDIAN : " + median + " MODE : "+ mode + " SD : " + sd);
                
            numSuccess = (int) actualProb;
            //Number of success/Number of Trials
            actualProb=(actualProb/(nn));
            expression = connection.eval("dhyper("+x+","+m+","+n+","+k+")");
            idealProb = expression.asDouble();
            System.out.println("Actual : " + actualProb + "Ideal : " + idealProb);
            logger.logHypergeometric(id, object, "Hypergeometric", numSuccess, actualProb, idealProb, n + m, m, k, x, nn);
            connection.close();
            ExperimentResult er = new ExperimentResult(resultList, actualProb, idealProb, mean, median, mode, sd);
            return er;
        } catch (RserveException | REXPMismatchException ex) {
            java.util.logging.Logger.getLogger(CoinExperiment.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    //Binomial and Negative Binomial
    public ExperimentResult binomial(int id,int x, int n, int size, double prob, String binom, String object) throws IOException{
        this.id = id;
        logger = new Logger();
        if(binom.equals("Binomial")){
            connection = null;
            expression = null;
            actualProb = 0;
            idealProb = 0;
            try {
                //double x = (1.0*combination(6, 4) * combination(14, 1)) / combination(20, 5);
                connection = new RConnection();
                expression = connection.eval("rbinom("+n+","+size+","+prob+")");
                int[] results = expression.asIntegers();
                
                //System.out.println("RESULTS LENGTH!! : " + results.length);
                for (int i = 0; i < results.length; i++){
                    //If number drawn/taken is equal to number expected, actualProb + 1
                    if(results[i] == x){
                        actualProb++;
                    }
                        resultList.add(results[i]);
                    //System.out.println(results[i]);
                }
//                System.out.println("!!!!!!" + Collections.frequency(resultList, 0));
//                System.out.println(Collections.frequency(resultList, 1));
//                System.out.println(Collections.frequency(resultList, 2));
//                System.out.println(Collections.frequency(resultList, 3));
                xGroup = "x<-c(";
                for(int j = 0; j < results.length-1; j++){
                    xGroup+=results[j]+",";
                }
                xGroup+=results[results.length-1] + ")";
                connection.voidEval(xGroup);
                //connection.voidEval("y<-hist(x,probability=TRUE)");
                
                //png(filename="your/file/location/name.png")
//plot(fit)
                connection.voidEval("png(filename=\"C:/Users/Paolo/Documents/ST-STAT-MCO2/STAT MCO2/build/web/images/barActual.png\")");
                connection.voidEval("y<-barplot(table(x));graphics.off()");
                connection.voidEval("png(filename=\"C:/Users/Paolo/Documents/ST-STAT-MCO2/STAT MCO2/build/web/images/barIdeal.png\")");
                connection.voidEval("y<-barplot((dbinom(0:"+size+","+size+","+prob+")),space=10);graphics.off()");
                
//                connection.voidEval("png(filename=\"C:/Users/Paolo/Documents/ST-STAT-MCO2/STAT MCO2/build/web/images/Overlap.png\")");
//                connection.voidEval("barplot(table(x),col=rgb(1,0,0,.5);barplot((dbinom(0:"+size+","+size+","+prob+")),space=10, col=rgb(0,1,0,.5),add=TRUE);graphics.off()");
                
//barplot(dat$A, col=rgb(1, 0, 0, .5)) 
//barplot(dat$B, col=rgb(0, 1, 0, .5), add=TRUE) 
                expression = connection.eval("mean(x)");
                mean = expression.asDouble();
                expression = connection.eval("median(x)");
                median = expression.asDouble();
                expression = connection.eval("sd(x)");
                sd = expression.asDouble();
                connection.voidEval("getmode <- function(v) {\n" +
"   uniqv <- unique(v)\n" +
"   uniqv[which.max(tabulate(match(v, uniqv)))]\n" +
"}");
                expression = connection.eval("getmode(x)");
                mode = expression.asDouble();
                System.out.println("MEAN : " + mean + " MEDIAN : " + median + " MODE : "+ mode + " SD : " + sd);
                numSuccess = (int) actualProb;
                //Number of success/Number of Trials
                actualProb=(actualProb/results.length);
                expression = connection.eval("dbinom("+x+","+size+","+prob+")");
                idealProb = expression.asDouble();
                System.out.println("Actual : " + actualProb + "Ideal : " + idealProb);
                logger.logExperiment(id, object, binom, numSuccess, actualProb, idealProb, size, results.length);
                connection.close();
                ExperimentResult er = new ExperimentResult(resultList, actualProb, idealProb, mean, median, mode, sd);
                return er;
            } catch (RserveException | REXPMismatchException ex) {
                java.util.logging.Logger.getLogger(CoinExperiment.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }
        }
        else{
            connection = null;
            expression = null;
            actualProb = 0;
            idealProb = 0;
            try {
                //double x = (1.0*combination(6, 4) * combination(14, 1)) / combination(20, 5);
                connection = new RConnection();
                expression = connection.eval("rnbinom("+n+","+size+","+prob+")");
                int[] results = expression.asIntegers();
                for (int i = 0; i < results.length; i++){
                    //If number drawn/taken is equal to number expected, actualProb + 1
                    if(results[i] == x){
                        actualProb++;
                    }
                        resultList.add(results[i]);
                    //System.out.println(results[i]);
                }
                xGroup = "x<-c(";
                for(int j = 0; j < results.length-1; j++){
                    xGroup+=results[j]+",";
                }
                xGroup+=results[results.length-1] + ")";
                connection.voidEval(xGroup);
                
                connection.voidEval("png(filename=\"C:/Users/Paolo/Documents/ST-STAT-MCO2/STAT MCO2/build/web/images/barActual.png\")");
                connection.voidEval("y<-barplot(table(x));graphics.off()");
                connection.voidEval("png(filename=\"C:/Users/Paolo/Documents/ST-STAT-MCO2/STAT MCO2/build/web/images/barIdeal.png\")");
                connection.voidEval("y<-barplot((dnbinom(0:"+size+","+size+","+prob+")),space=10);graphics.off()");
                
                
                expression = connection.eval("mean(x)");
                mean = expression.asDouble();
                expression = connection.eval("median(x)");
                median = expression.asDouble();
                expression = connection.eval("sd(x)");
                sd = expression.asDouble();
                connection.voidEval("getmode <- function(v) {\n" +
"   uniqv <- unique(v)\n" +
"   uniqv[which.max(tabulate(match(v, uniqv)))]\n" +
"}");
                expression = connection.eval("getmode(x)");
                mode = expression.asDouble();
                System.out.println("MEAN : " + mean + " MEDIAN : " + median + " MODE : "+ mode + " SD : " + sd);
                
                numSuccess = (int) actualProb;
                //Number of success/Number of Trials
                actualProb=(actualProb/results.length);
                expression = connection.eval("dnbinom("+x+","+size+","+prob+")");
                idealProb = expression.asDouble();
                System.out.println("Actual : " + actualProb + "Ideal : " + idealProb);
                logger.logExperiment(id, object, binom, numSuccess, actualProb, idealProb, size, results.length);
                connection.close(); 
                ExperimentResult er = new ExperimentResult(resultList, actualProb, idealProb, mean, median, mode, sd);
                return er;
            } catch (RserveException | REXPMismatchException ex) {
                java.util.logging.Logger.getLogger(CoinExperiment.class.getName()).log(Level.SEVERE, null, ex);
                return null;
            }
        }
    }
    
    //Multinomial
    public ExperimentResult multinomial(int id,int[] x, int n, int size, String prob, String object) throws IOException{
        this.id = id;
        logger = new Logger();
        connection = null;
        expression = null;
        actualProb = 0;
        idealProb = 0;
        try {
            //double x = (1.0*combination(6, 4) * combination(14, 1)) / combination(20, 5);
            connection = new RConnection();
            String xGroup = "c(";
            for(int i = 0; i < x.length-1; i++){
                xGroup+=x[i]+",";
            }
            xGroup+=x[x.length-1] + ")";
            //System.out.println(xGroup);
            expression = connection.eval("rmultinom("+n+","+size+","+prob+")");
            
            double[][] results = expression.asDoubleMatrix();
            int check = 0;
            for(int i = 0; i < n; i++){
                for(int j = 0; j < x.length; j++){
                    if(results[j][i] == 1.0*x[j]){
                        check++;
                    }
                }
                
                if(check == x.length){
                    actualProb++;
                }
                check = 0;
            }
            numSuccess = (int)actualProb;
            //Number of success/Number of Trials
            actualProb=(actualProb/n);
            expression = connection.eval("dmultinom("+xGroup+","+size+","+prob+")");
            idealProb = expression.asDouble();
            System.out.println("Actual : " + actualProb + "Ideal : " + idealProb);
            logger.logMultinomial(id, object, "Multinomial", numSuccess, actualProb, idealProb, n, x.length);
            connection.close();
            ExperimentResult er = new ExperimentResult(resultList, actualProb, idealProb, mean, median, mode, sd);
            return er;
        } catch (RserveException | REXPMismatchException ex) {
            java.util.logging.Logger.getLogger(CoinExperiment.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
}
