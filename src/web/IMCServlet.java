package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IMCServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest peticion, HttpServletResponse respuesta) 
		throws ServletException, IOException{
		//Recuperar datos desde el formulario
		
		double peso = Double.parseDouble(peticion.getParameter("peso"));
		double estatura = Double.parseDouble(peticion.getParameter("estatura"));
		int edad = Integer.parseInt(peticion.getParameter("edad"));
	
		//Procesamiento
		
		double imc = peso / Math.pow(estatura, 2);
		String rango = "";
		if (imc < 22 && edad < 45) {
			rango = "bajo";
		}
		if ((imc < 22 && edad >= 45) || (imc >= 22 && edad < 45)) {
			rango = "normal";
		}
		if (imc >= 22 && edad >= 45) {
			rango = "alto";
		}
		
		//Enviar o mostrar datos
		peticion.getSession().setAttribute("imc", imc);
		peticion.getSession().setAttribute("rango", rango);
		
		respuesta.sendRedirect("index.jsp");
	}
}
