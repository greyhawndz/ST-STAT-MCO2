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
        for(int i = 0; i < 10; i++){
            CoinExperiment experiment = new CoinExperiment(1, 20, 0.5,12);
            experiment.performExperiment(ExperimentType.binomial);
        }
        
        
        
    }
}
