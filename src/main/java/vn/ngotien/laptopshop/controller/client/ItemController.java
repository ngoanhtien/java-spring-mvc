package vn.ngotien.laptopshop.controller.client;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import vn.ngotien.laptopshop.domain.Product;
import vn.ngotien.laptopshop.service.ProductService;

@Controller
public class ItemController {
    private final ProductService productService;

    public ItemController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product/detail/{id}")
    public String getItemDetailPage(Model model, @PathVariable("id") long id) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("products", products);
        Product product = this.productService.getProductById(id);
        model.addAttribute("product", product);
        return "client/product/detail";
    }

    @PostMapping("/add-product-to-cart/{id}")
    public String addProductToCart(Model model, @PathVariable("id") long id, HttpServletRequest request) {
        long productId = id;
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");

        this.productService.handleAddProductToCart(email, productId);
        return "redirect:/";
    }
}
