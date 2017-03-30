/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author Paolo
 */
public class ExperimentResult {
    private ArrayList results;
    private double[][] multinomResults;
    private double actualProb;
    private double idealProb;
    private double mean;
    private double median;
    private double sd;
    private double mode;
    
    public ExperimentResult(){
        
    }
    
    public ExperimentResult(ArrayList results, double actual, double ideal, double mean, double median, double mode, double sd){
        this.results = results;
        actualProb = actual;
        idealProb = ideal;
        this.median = median;
        this.mean = mean;
        this.mode = mode;
        this.sd = sd;
    }
    
    public ExperimentResult(double[][] results, double actual, double ideal, double mean, double median, double mode, double sd){
        this.multinomResults = results;
        actualProb = actual;
        idealProb = ideal;
        this.median = median;
        this.mean = mean;
        this.mode = mode;
        this.sd = sd;
    }
    
    public ArrayList getResults(){
        return results;
    }
    
    public double[][] getMultinomResults(){
        return multinomResults;
    }
    
    public double getActual(){
        return actualProb;
    }
    
    public double getIdeal(){
        return idealProb;
    }
    
    public double getMean(){
        return mean;
    }
    
    public double getMedian(){
        return median;
    }
    
    public double getMode(){
        return mode;
    }
    
    public double getSD(){
        return sd;
    }
}
