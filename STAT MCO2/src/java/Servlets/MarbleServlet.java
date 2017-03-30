/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Model.Experiment;
import Model.ExperimentResult;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Paolo
 */
public class MarbleServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String category = "Coin";
        String type = request.getParameter("type");
        Experiment exp = new Experiment();
        ArrayList<ExperimentResult> result = new ArrayList();
        int trial;
        int experiments;
        double prob;
        int definition;
        switch(type){
            case "bin" : 
                trial = Integer.parseInt(request.getParameter("trial"));
                experiments = Integer.parseInt(request.getParameter("exp"));
                prob = Double.parseDouble(request.getParameter("prob"));
                definition = Integer.parseInt(request.getParameter("def"));
                result.add(exp.binomial(1, definition, experiments, trial, prob, "Binomial", category));
                result.add(exp.binomial(2, definition, experiments, trial, prob, "Binomial", category));
                result.add(exp.binomial(3, definition, experiments, trial, prob, "Binomial", category));
                System.out.println(result.get(0).getActual() + " " + result.get(0).getIdeal());
                result = new ArrayList();
                break;
            case "neg" :
                trial = Integer.parseInt(request.getParameter("trial"));
                experiments = Integer.parseInt(request.getParameter("exp"));
                prob = Double.parseDouble(request.getParameter("prob"));
                definition = Integer.parseInt(request.getParameter("def"));
                result.add(exp.binomial(4, definition, experiments, trial, prob, "Negative", category));
                result.add(exp.binomial(5, definition, experiments, trial, prob, "Negative", category));
                result.add(exp.binomial(6, definition, experiments, trial, prob, "Negative", category));
                System.out.println(result.get(0).getActual() + " " + result.get(0).getIdeal());
                result = new ArrayList();
                break;
            case "hyp" :
                trial = Integer.parseInt(request.getParameter("trial"));
                experiments = Integer.parseInt(request.getParameter("exp"));
                int population = Integer.parseInt(request.getParameter("pop"));
                int popSuccess = Integer.parseInt(request.getParameter("popSuc"));
                int correctTrials = Integer.parseInt(request.getParameter("correct"));
                result.add(exp.hypergeometric(7, correctTrials, experiments, popSuccess, population - popSuccess, trial, category));
                result.add(exp.hypergeometric(8, correctTrials, experiments, popSuccess, population - popSuccess, trial, category));
                result.add(exp.hypergeometric(9, correctTrials, experiments, popSuccess, population - popSuccess, trial, category));
                System.out.println(result.get(0).getActual() + " " + result.get(0).getIdeal());
                result = new ArrayList();
                break;
            case "mul" :
                break;
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
