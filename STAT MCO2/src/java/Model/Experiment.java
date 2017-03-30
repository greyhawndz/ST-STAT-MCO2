/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Helper.ExperimentType;
import java.io.IOException;
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
    //Hypergeometric
    public Experiment(int id,int x, int nn, int m, int n, int k, String object) throws IOException{
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
                //System.out.println(results[i]);
            }
            numSuccess = (int) actualProb;
            //Number of success/Number of Trials
            actualProb=(actualProb/(nn));
            expression = connection.eval("dhyper("+x+","+m+","+n+","+k+")");
            idealProb = expression.asDouble();
            System.out.println("Actual : " + actualProb + "Ideal : " + idealProb);
            logger.logHypergeometric(id, object, "Hypergeometric", numSuccess, actualProb, idealProb, n + m, m, k, x, nn);
        } catch (RserveException | REXPMismatchException ex) {
            java.util.logging.Logger.getLogger(CoinExperiment.class.getName()).log(Level.SEVERE, null, ex);
        }
        connection.close();
    }
    
    //Binomial and Negative Binomial
    public Experiment(int id,int x, int n, int size, double prob, String binom, String object) throws IOException{
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
                for (int i = 0; i < results.length; i++){
                    //If number drawn/taken is equal to number expected, actualProb + 1
                    if(results[i] == x){
                        actualProb++;
                    }
                    //System.out.println(results[i]);
                }
                numSuccess = (int) actualProb;
                //Number of success/Number of Trials
                actualProb=(actualProb/results.length);
                expression = connection.eval("dbinom("+x+","+size+","+prob+")");
                idealProb = expression.asDouble();
                System.out.println("Actual : " + actualProb + "Ideal : " + idealProb);
                logger.logExperiment(id, object, binom, numSuccess, actualProb, idealProb, size, results.length);
            } catch (RserveException | REXPMismatchException ex) {
                java.util.logging.Logger.getLogger(CoinExperiment.class.getName()).log(Level.SEVERE, null, ex);
            }
            connection.close();
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
                    //System.out.println(results[i]);
                }
                numSuccess = (int) actualProb;
                //Number of success/Number of Trials
                actualProb=(actualProb/results.length);
                expression = connection.eval("dnbinom("+x+","+size+","+prob+")");
                idealProb = expression.asDouble();
                System.out.println("Actual : " + actualProb + "Ideal : " + idealProb);
                logger.logExperiment(id, object, binom, numSuccess, actualProb, idealProb, size, results.length);
            } catch (RserveException | REXPMismatchException ex) {
                java.util.logging.Logger.getLogger(CoinExperiment.class.getName()).log(Level.SEVERE, null, ex);
            }
            connection.close();
        }
    }
    
    //Multinomial
    public Experiment(int id,int[] x, int n, int size, String prob, String object) throws IOException{
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
        } catch (RserveException | REXPMismatchException ex) {
            java.util.logging.Logger.getLogger(CoinExperiment.class.getName()).log(Level.SEVERE, null, ex);
        }
        connection.close();
    }
}
