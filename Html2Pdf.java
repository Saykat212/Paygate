
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.xhtmlrenderer.pdf.ITextRenderer;
import org.xhtmlrenderer.pdf.ITextTextRenderer;
import org.xhtmlrenderer.resource.FSEntityResolver;
import org.xml.sax.SAXException;
import com.lowagie.text.DocumentException;
import javax.servlet.http.HttpSession;

import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Html2Pdf")
public class Html2Pdf extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public Html2Pdf() {
        super();
    }
 
    protected void doGet(HttpServletRequest requestObj, HttpServletResponse responseObj) throws ServletException, IOException {
 
        }
 
    protected void doPost(HttpServletRequest requestObj, HttpServletResponse responseObj) throws ServletException, IOException {
 
                responseObj.setHeader("Cache-Control", "no-cache"); 
                String amm = requestObj.getSession().getAttribute("amm").toString();
                String email = requestObj.getSession().getAttribute("email").toString();
                String phone = requestObj.getSession().getAttribute("phone").toString();
                String name = requestObj.getSession().getAttribute("name").toString();
                java.util.Date date = new java.util.Date();
               // String html = (String) requestObj.getParameter("html");
             
                String html="<html>"
                		+ "<head></head>"
                		+ "<body>"
                		+ "<h2>PAYMENT RECEIPT</h2>"
                		+ "<p><b>Payment Successful..!!</b></p>"
                		+"<p>Name : "+name+"</p>"
                		+ "<p>Email Id : "+email+"</p>"
                		+"<p>Payment Id : PAY87625439WE</p>"
                		+ "<p>Amount : "+amm+"</p>"
                		+"<p>Paid To : NGO SAI Group</p>"
                		+"<p>Paid On : "+date.toString()+"</p>"
                		+"<p>------------------------------------------------------</p>"
                		+"<p>Thank You..!! For Your Donation to NGO SAI GROUP</p>"
                				+ "</body>"
                				+ "</html>";
                
             
                 responseObj.setContentType( "application/pdf" );  //Content type should be application/pdf
 
                responseObj.setHeader("Content-Disposition","attachment; filename=\"" +"MyPdf.pdf\"" );
                responseObj.setHeader("Cache-Control", "no-cache");
                OutputStream os=responseObj.getOutputStream();
                final DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
                documentBuilderFactory.setValidating(true);
                DocumentBuilder builder;
                try {
                        builder = documentBuilderFactory.newDocumentBuilder();
                        builder.setEntityResolver(FSEntityResolver.instance());
                        org.w3c.dom.Document document;
                        document=builder.parse(new ByteArrayInputStream(html.getBytes())); //Parse the content of the given InputStream as an XML document and return a new DOM Document object. 
 
                        ITextRenderer itxtrenderer = new ITextRenderer();
                        itxtrenderer.setDocument(document,null);
                        itxtrenderer.layout();
                        itxtrenderer.createPDF(os,true);  
                        
                       // creates PDF from the XML document and writes to outputstream.
                        
                  } catch (ParserConfigurationException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
 
                  } catch (SAXException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                  }
                    catch (DocumentException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                    }
                
                 os.flush();
                 
                 os.close();
                   
                
                        }
 
}
 
