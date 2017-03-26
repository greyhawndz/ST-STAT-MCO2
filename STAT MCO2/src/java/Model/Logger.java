/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Helper.ExperimentType;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

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
    
    public void logExperiment(int experimentId, String objectExperiment, String experimentType, int numSuccess, double actualProbability) throws IOException{
        sb = new StringBuilder();
        if(!logFile.exists()){
            logFile.createNewFile();
        }
        FileWriter fw = new FileWriter(logFile.getAbsoluteFile(),true);
        BufferedWriter bw = new BufferedWriter(fw);
        sb.append(objectExperiment +" Experiment " +experimentId + ":");
        sb.append(System.lineSeparator());
        sb.append("Experiment Type: " +experimentType);
        sb.append(System.lineSeparator());
        sb.append("Number of successes: " +numSuccess);
        sb.append(System.lineSeparator());
        sb.append("Actual Probability: " +actualProbability);
        sb.append(System.lineSeparator());
        bw.write(sb.toString());
        bw.newLine();
        bw.close();
        fw.close();
    }
    
    
}
