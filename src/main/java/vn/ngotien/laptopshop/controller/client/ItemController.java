package vn.ngotien.laptopshop.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import vn.ngotien.laptopshop.domain.Product;

@Controller
public class ItemController {
    @GetMapping("/product/{id}")
    public String getItemDetailPage(Model model, @PathVariable("id") long id) {

        return "client/product/detail";
    }
}
