/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Driver;

import Helper.ExperimentType;
import Model.CoinExperiment;
import Model.Experiment;
import java.io.IOException;

/**
 *
 * @author William
 */
public class Driver {
    public static void main(String[] args) throws IOException {
            //CoinExperiment experiment = new CoinExperiment(1, 20, 0.5,12,20);
            //experiment.performExperiment(ExperimentType.hyperGeometric);
            Experiment exp = new Experiment();
            
            /*
            Experiment exp = new Experiment(7,2, 30, 26, 26, 5, "Card");
            exp = new Experiment(1, 5, 200, 20, 0.5, "Binomial", "Coin");
            exp = new Experiment(4, 3, 200, 2, 0.5, "Negative Binomial", "Coin");
            exp = new Experiment(10 , new int[] {1, 1, 1, 2}, 200, 5, "c(0.25,0.25,0.25,0.25)", "Card");*/
        
        
            //CoinExperiment negExperiment = new CoinExperiment(4, 15, 0.5,3,20);
            //negExperiment.performExperiment(ExperimentType.negativeBinomial);
        
        
        
        
    }
}
