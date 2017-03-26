/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Driver;

import Helper.ExperimentType;
import Model.CoinExperiment;
import java.io.IOException;

/**
 *
 * @author William
 */
public class Driver {
    public static void main(String[] args) throws IOException {
            CoinExperiment experiment = new CoinExperiment(1, 20, 0.5,12,20);
            experiment.performExperiment(ExperimentType.binomial);
        
        
        
            CoinExperiment negExperiment = new CoinExperiment(4, 15, 0.5,3,20);
            negExperiment.performExperiment(ExperimentType.negativeBinomial);
        
        
        
        
    }
}
