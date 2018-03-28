package actions;

import org.jahia.bin.Action;
import org.jahia.bin.ActionResult;
import org.jahia.services.content.JCRSessionWrapper;
import org.jahia.services.render.RenderContext;
import org.jahia.services.render.Resource;
import org.jahia.services.render.URLResolver;
import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class CopyNode extends Action {
    @Override
    public ActionResult doExecute(HttpServletRequest httpServletRequest, RenderContext renderContext, Resource resource, JCRSessionWrapper jcrSessionWrapper, Map<String, List<String>> map, URLResolver urlResolver) throws Exception {
        System.out.println("------------------");
        System.out.println(httpServletRequest.getParameter("text"));
        System.out.println("------------------");
        ActionResult result = new ActionResult(200);
        JSONObject json = new JSONObject();
        json.put("key", 32);
        result.setJson(json);
        httpServletRequest.getServletContext().setAttribute("key2", 34);
        httpServletRequest.getSession().setAttribute("key3", 35);
        httpServletRequest.setAttribute("key4", 36);
        return new ActionResult(200, null, json);
    }
}
