/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Helper.ExperimentType;
import java.io.File;

/**
 *
 * @author William
 */
public class Logger {
    private final String FILE_NAME = "Experiments.txt";
    private File logFile;
    private StringBuilder sb;
    
    
    public Logger() {
        logFile = new File(FILE_NAME);
    }
    
    public void logExperiment(int experimentId, String objectExperiment, String experimentType){
        
    }
    
    
}
