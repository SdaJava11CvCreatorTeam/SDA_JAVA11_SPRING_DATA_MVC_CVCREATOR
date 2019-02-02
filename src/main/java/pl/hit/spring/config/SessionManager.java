package pl.hit.spring.config;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class SessionManager implements HandlerInterceptor {

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        List<String> values = (List) modelAndView.getModel().values();
        for (String value :
                values) {
            byte[] bytes = value.getBytes();
            value = new String(bytes,StandardCharsets.UTF_8.displayName());

        }
    }

}
