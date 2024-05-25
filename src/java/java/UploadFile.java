/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/UploadFile"})
public class UploadFile extends HttpServlet {

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
            throws ServletException, IOException, NoSuchAlgorithmException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
         try {
            PrintWriter out = response.getWriter();
            HttpSession session=request.getSession();
            
            ServletContext sc=request.getSession().getServletContext();
            
            List<String> ms = new ArrayList<String>();
            String finalimage = "";
            boolean isMultipart = ServletFileUpload.isMultipartContent(
                    request);
            List<String> m = new ArrayList<String>();
            File savedFile;
            
            if (!isMultipart) {
                
                System.out.println("File Not Uploaded");
            }
            else {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List items = null;
                
                try {
                    items = upload.parseRequest(request);
                    
                }
                catch (FileUploadException e)
                {
                    e.printStackTrace();
                }
                Iterator itr = items.iterator();
                while (itr.hasNext()) {
                    List<String> al = new ArrayList<String>();
                    
                    String sss = "";
                    FileItem item = (FileItem) itr.next();
                    String value = "";
                    String a[];
                    if (item.isFormField()) {
                        String name = item.getFieldName();
                        //System.out.println("name: "+name+'\n');
                        value = item.getString();
                        // System.out.println("value: "+value);
                        al.add(value);
                        for (int i = 0; i < al.size(); i++) {
                            sss += al.get(i);
                            System.out.println("is this image" + sss);
                            
                            
                        }
                        
                        a = sss.split("-");
                        for (int i = 0; i < a.length; i++) {
                            
                            String am = a[i];
                            System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
                            m.add(a[i]);
                        }
                    } else {
                        
                        String itemName = item.getName();
                        
                        
                        String reg = "[.*]";
                        String replacingtext = "";
                        
                        Pattern pattern = Pattern.compile(reg);
                        Matcher matcher = pattern.matcher(itemName);
                        StringBuffer buffer = new StringBuffer();
                        
                        while (matcher.find())
                        {
                            matcher.appendReplacement(buffer, replacingtext);
                        }
                        int IndexOf = itemName.indexOf(".");
                        int Indexf = itemName.indexOf(".");
                        String domainName = itemName.substring(IndexOf);
                        
                        finalimage = buffer.toString() + domainName;
                        System.out.println("Final Image===" + finalimage);
                        ms.add(finalimage);
                        ms.get(0);
                        String  fn=ms.get(0);
                        System.out.println("trying to put all in store");
                    savedFile = new File(sc.getRealPath("profile")+"\\"+finalimage);
                       System.out.println(savedFile);
                        System.out.println("Completed");
                        
                        try
                        {
                            item.write(savedFile);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        
                    }
                }
            }
                
            System.out.println("Connection Started");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/block","root","root");
             System.out.println("Connection execute");
              Statement st=null,st1=null;
               ResultSet rs=null;
            int id1=0;
            String prevdata="";
            st = con.createStatement();
            ResultSet rs1 = st.executeQuery("select * from blockchain");
            System.out.println(rs1);
            while(rs1.next()) {
            id1=rs1.getInt(1)+1;
            prevdata=rs1.getString(2);
            System.out.println(prevdata);
            }
            java.util.Date date = new java.util.Date() ;
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm") ;
			dateFormat.format(date);
			System.out.println(dateFormat.format(date));
                 String data1 = prevdata+dateFormat.format(date);
			            
                 
                 
			            StringBuffer sb=new StringBuffer();
			            MessageDigest md = MessageDigest.getInstance("MD5");
				        md.update(String.valueOf(data1).getBytes());
				 
				        byte byteData[] = md.digest();
				 
				        //convert the byte to hex format method 1
				        
				        for (int i = 0; i < byteData.length; i++) {
				         sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
				        }
                                        
                                File file = new File("C://blockchain//block"+id1+".txt");
                                System.out.println(file);
      FileWriter writer = new FileWriter(file);
writer.write(sb.toString());
writer.close();        
System.out.println("Hashkey:"+sb.toString());
  Statement st2 = con.createStatement();
          int add1=st2.executeUpdate("insert into blockchain values('"+id1+"','"+sb.toString()+"')");                          
                                
                                
  String query = "update upload set hashkey = '"+sb.toString()+"' ";                               
   System.out.println(query); 

    System.out.println(" create PrepareStatment");   
        PreparedStatement ps = null;
        //1st step
      System.out.println("1st Step");
  ps =con.prepareStatement("insert into upload(did,cate,sub,dname,dprice,des,image)values('"+m.get(0)+"','"+m.get(1)+"','"+m.get(2)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"','"+ms.get(0)+"')");
  System.out.println(ps);
  ps.executeUpdate();
  System.out.println(ps);
  //2nd Step
  
    
   //3rd Step
   
    
   
    PreparedStatement ps1 = null;
    
  ps1 =con.prepareStatement("update upload set hashkey='"+sb.toString()+"' ");
    System.out.println(ps1);
  ps1.executeUpdate();
   System.out.println(1);
            out.println("<script>"
                        +"alert('Added Sucessfully')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("apro.jsp");
                rd.include(request, response);
        } catch (SQLException ex) {
          out.println("<script>"
                        +"alert('Fail')"
                        +"</script>");
                RequestDispatcher rd=request.getRequestDispatcher("apro.jsp");
                rd.include(request, response);
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
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(UploadFile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UploadFile.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(UploadFile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UploadFile.class.getName()).log(Level.SEVERE, null, ex);
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
