/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Helper.ExperimentType;
import java.io.IOException;
import java.util.ArrayList;
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
    private Random rand;
    private boolean happens;
    private int experimentTrials;
    private ArrayList experimentOutcomes;
    
    public CoinExperiment(int id, int trials, double probability, int numSuccesses, int experimentTrials){
        this.id = id;
        this.trials = trials;
        this.numSuccesses = numSuccesses;
        this.probability = probability;
        this.failure = 1 - probability;
        logger = new Logger();
        experimentSuccess = 0;
        rand = new Random();
        this.experimentTrials = experimentTrials;
        experimentOutcomes = new ArrayList();
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
        double average = 0;
        int total = 0;
        System.out.println("Ideal Binomial Experiment Probability: " +result);
        for(int i = 0; i < experimentTrials; i++){
                for(int j = 0; j < trials; j++){
                happens = rand.nextDouble() < probability;
                if(happens){
                    experimentSuccess++;
                }
            }
                System.out.println("Experiment Success: " +experimentSuccess);
                experimentOutcomes.add(experimentSuccess);
                experimentSuccess = 0;
        }
        
        for(int i = 0; i < experimentOutcomes.size(); i++){
            System.out.println("Successes: " +experimentOutcomes.get(i));
            total += (int) experimentOutcomes.get(i);
        }
        
        average = (double) (total / experimentOutcomes.size());
        double actualProb = (double) (average / experimentTrials);
        System.out.println("Average: " +average);
        System.out.println("Actual Probability: " +actualProb );
        logger.logExperiment(id, "Coin", "Binomial Experiment", average, actualProb, result, trials, experimentTrials);
    }
    
    private void negativeBinomialExperiment() throws IOException{
        double result = combination(trials - 1,numSuccesses - 1) * Math.pow(probability, numSuccesses) * Math.pow(failure, trials - numSuccesses);
        double average = 0;
        int total = 0;
        System.out.println("Ideal Negative Binomial Experiment Probability: " +result);
        for(int i = 0; i < experimentTrials; i++){
                for(int j = 0; j < trials; j++){
                happens = rand.nextDouble() < probability;
                if(happens){
                    experimentSuccess++;
                }
            }
                System.out.println("Experiment Success: " +experimentSuccess);
                experimentOutcomes.add(experimentSuccess);
                experimentSuccess = 0;
        }
        
        for(int i = 0; i < experimentOutcomes.size(); i++){
            System.out.println("Successes " +experimentOutcomes.get(i));
            total += (int) experimentOutcomes.get(i);
        }
        
        average = (double) total / experimentOutcomes.size();
        double actualProb = (double) average / experimentTrials;
        System.out.println("Average: " +average);
        System.out.println("Actual Probability: " +actualProb );
        logger.logExperiment(id, "Coin", "Binomial Experiment", average, actualProb, result, trials, experimentTrials);
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
        combination = factorial(n)/ (factorial(r) * factorial(n-r));
        return combination;
    }
    
    
}
