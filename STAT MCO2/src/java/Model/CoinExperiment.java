/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Helper.ExperimentType;
import java.io.IOException;
import java.util.Random;

/**
 *
 * @author William
 */
public class CoinExperiment{
    
    private int numSuccesses;
    private double probability;
    private int id;
    private int trials;
    private double failure;
    private Logger logger;
    private int experimentSuccess;
    Random rand;
    boolean happens;
    
    public CoinExperiment(int id, int trials, double probability, int numSuccesses){
        this.id = id;
        this.trials = trials;
        this.numSuccesses = numSuccesses;
        this.probability = probability;
        this.failure = 1 - probability;
        logger = new Logger();
        experimentSuccess = 0;
        rand = new Random();
    }
    
    
    public void performExperiment(ExperimentType type) throws IOException{
        if(type == ExperimentType.binomial){
            binomialExperiment();
        }
        else if(type == ExperimentType.negativeBinomial){
            negativeBinomialExperiment();
        }
        else if(type == ExperimentType.hyperGeometric){
            hyperGeometricExperiment();
        }
        else if(type == ExperimentType.multinomial){
            multinomialExperiment();
        }
    }
    
    private void binomialExperiment() throws IOException{
        
        double result = combination(trials,numSuccesses) * Math.pow(probability, numSuccesses) * Math.pow(failure, trials - numSuccesses);
        System.out.println("Ideal Binomial Experiment Probability: " +result);
        for(int i = 0; i < trials; i++){
            happens = rand.nextDouble() < probability;
            if(happens){
                experimentSuccess++;
            }
        }
        System.out.println("Experiment Success:" +experimentSuccess);
        System.out.println("Experiment trials: " +trials);
        double experimentalProbability = (double) experimentSuccess / trials;
        System.out.println("Actual Binomial Experiment Probability: " +experimentalProbability);
        
        logger.logExperiment(id, "Coin", "Binomial Experiment", experimentSuccess, experimentalProbability);
    }
    
    private void negativeBinomialExperiment(){
        
    }
    
    private void multinomialExperiment(){
    
    }
    
    private void hyperGeometricExperiment(){
    
    }
    
    
    private long factorial(int num){
        long factorial = 1;
        
        for(int i = 1; i <= num; i++){
            factorial = factorial * i;
        }
        
        return factorial;
    }
    
    private long combination(int n, int r){
        long combination = 1;
        System.out.println("N = " +n);
        System.out.println("R = " +r);
        System.out.println(factorial(r) * factorial(n-r));
        combination = factorial(n)/ (factorial(r) * factorial(n-r));
        return combination;
    }
    
    
}
