/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Helper.ExperimentType;

/**
 *
 * @author William
 */
public abstract class Experiment {
    private int id;
    private int numTrials;
    private ExperimentType experimentType;
    
    public Experiment(int id, int numTrials, ExperimentType experimentType){
        this.id = id;
        this.numTrials = numTrials;
        this.experimentType = experimentType;
    }
    
}
