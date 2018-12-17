/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Datos.DAOModel;
import Modelo.BubbleDataModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Christian
 */
@WebServlet(name = "Home2", urlPatterns = {"/Home2"})
public class Home extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        DAOModel d = new DAOModel();
        ArrayList<BubbleDataModel> bubble = null;

        try {
            bubble = d.loadData("dataPreliminar.csv");
        } catch (ParseException ex) {
            Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("datos", bubble);
        RequestDispatcher disp = request.getRequestDispatcher("/index.jsp");
        disp.forward(request, response);
        
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
        DAOModel d = new DAOModel();
        ArrayList<BubbleDataModel> bubble = null;

        try {
            bubble = d.loadData("dataPreliminar.csv");
        } catch (ParseException ex) {
            Logger.getLogger(Home.class.getName()).log(Level.SEVERE, null, ex);
        }
    
        String año = request.getParameter("agno");
        int añoEscogido = Integer.parseInt(año);
        
        switch(añoEscogido){
            case 2018:
                int mediaHospEn=0,mediaHospFe=0,mediaHospMa=0,mediaHospAb=0,mediaHospMay=0,mediaHospJu=0,mediaHospJl=0,mediaHospAg=0,mediaHospSe=0,mediaHospOc=0,mediaHospNo=0,mediaHospDi = 0;
                int mat=0;
                int cont=0;
                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
                for(BubbleDataModel lista: bubble){
                    try{
                    if(!lista.getFecha().before(dateFormat.parse("2018-01-01")) || !lista.getFecha().after(dateFormat.parse("2018-01-31"))){
                        mediaHospEn += lista.getHospitalizados();
                        
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-02-01")) || !lista.getFecha().after(dateFormat.parse("2018-02-28"))) {
                        mediaHospFe += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-03-01")) || !lista.getFecha().after(dateFormat.parse("2018-03-31"))) {
                        mediaHospMa += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-04-01")) || !lista.getFecha().after(dateFormat.parse("2018-04-30"))) {
                        mediaHospAb += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-05-01")) || !lista.getFecha().after(dateFormat.parse("2018-05-31"))) {
                        mediaHospMay += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-06-01")) || !lista.getFecha().after(dateFormat.parse("2018-06-30"))) {
                        mediaHospJu += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-07-01")) || !lista.getFecha().after(dateFormat.parse("2018-07-31"))) {
                        mediaHospJl+=lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-08-01")) || !lista.getFecha().after(dateFormat.parse("2018-08-31"))) {
                        mediaHospAg += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-09-01")) || !lista.getFecha().after(dateFormat.parse("2018-09-30"))) {
                        mediaHospSe += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-10-01")) || !lista.getFecha().after(dateFormat.parse("2018-10-31"))) {
                        mediaHospOc += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-11-01")) || !lista.getFecha().after(dateFormat.parse("2018-11-30"))) {
                        mediaHospNo += lista.getHospitalizados();
                    }
                    if (!lista.getFecha().before(dateFormat.parse("2018-12-01")) || !lista.getFecha().after(dateFormat.parse("2018-12-31"))) {
                        mediaHospDi += lista.getHospitalizados();
                        cont++;
                    }
                    }catch(Exception e){
                    }
                }
                for(BubbleDataModel lista: bubble){
                    if(!lista.getFecha().before(new Date(2018-01-01)) || !lista.getFecha().after(new Date(2018-12-31))){
                        mat += lista.getMp();             
                    }          
                }       
                mediaHospAb = mediaHospAb/cont;
                mediaHospAg = mediaHospAg/cont;
                mediaHospDi = mediaHospDi/cont;
                mediaHospEn = mediaHospEn/cont;
                mediaHospFe = mediaHospFe/cont;
                mediaHospJl = mediaHospJl/cont;
                mediaHospJu = mediaHospJu/cont;
                mediaHospMa = mediaHospMa/cont;
                mediaHospMay = mediaHospMay/cont;
                mediaHospNo = mediaHospNo/cont;
                mediaHospOc = mediaHospOc/cont;
                mediaHospSe = mediaHospSe/cont;
                
                        
                request.getSession().setAttribute("mediaHospEn", mediaHospEn);
                request.getSession().setAttribute("mediaHospFe", mediaHospFe);
                request.getSession().setAttribute("mediaHospMa", mediaHospMa);
                request.getSession().setAttribute("mediaHospAb", mediaHospAb);
                request.getSession().setAttribute("mediaHospMay", mediaHospMay);
                request.getSession().setAttribute("mediaHospJu", mediaHospJu);
                request.getSession().setAttribute("mediaHospJl", mediaHospJl);
                request.getSession().setAttribute("mediaHospAg", mediaHospAg);
                request.getSession().setAttribute("mediaHospSe", mediaHospSe);
                request.getSession().setAttribute("mediaHospOc", mediaHospOc);
                request.getSession().setAttribute("mediaHospNo", mediaHospNo);
                request.getSession().setAttribute("mediaHospDi", mediaHospDi);
                System.out.println(mediaHospEn);
                
                
                request.getSession().setAttribute("particulas", mat);
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
        }
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
