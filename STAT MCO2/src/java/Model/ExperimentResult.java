/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Paolo
 */
public class ExperimentResult {
    private int[] results;
    private double[][] multinomResults;
    private double actualProb;
    private double idealProb;
    
    public ExperimentResult(){
        
    }
    
    public ExperimentResult(int[] results, double actual, double ideal){
        this.results = results;
        actualProb = actual;
        idealProb = ideal;
    }
    
    public ExperimentResult(double[][] results, double actual, double ideal){
        this.multinomResults = results;
        actualProb = actual;
        idealProb = ideal;
    }
    
    public int[] getResults(){
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
}
