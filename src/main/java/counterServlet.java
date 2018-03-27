import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "counterServlet", urlPatterns = "/count")
public class counterServlet extends HttpServlet {
    private int counter = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        counter += 1;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>The count is " + counter + ".</h1>");
    }
}
