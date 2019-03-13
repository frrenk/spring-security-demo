package pl.piaseckif.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ManagerController {

    @GetMapping("/managerPage")
    public String managerPage() {
        return "manager-page";
    }
}
