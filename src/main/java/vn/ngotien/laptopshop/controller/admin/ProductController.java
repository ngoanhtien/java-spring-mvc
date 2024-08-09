package vn.ngotien.laptopshop.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;
import vn.ngotien.laptopshop.domain.Product;
import vn.ngotien.laptopshop.service.ProductService;
import vn.ngotien.laptopshop.service.UploadService;

@Controller
public class ProductController {
    private ProductService productService;
    private UploadService uploadService;

    public ProductController(ProductService productService, UploadService uploadService) {
        this.productService = productService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/product")
    public String getProductPage(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("products", products);
        return "admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/product/create";
    }

    @PostMapping("/admin/product/create")
    public String createUserPage(Model model,
            @Valid @ModelAttribute("newProduct") Product product,
            BindingResult newProductBindingResult,
            @RequestParam("file") MultipartFile file) {

        // Validate
        List<FieldError> errors = newProductBindingResult.getFieldErrors();
        for (FieldError fieldError : errors) {
            System.out.println(fieldError.getField() + "-" + fieldError.getDefaultMessage());
        }

        if (newProductBindingResult.hasErrors()) {
            return "admin/product/create";
        }

        // save
        String avatarPath = this.uploadService.handleUploadFile(file, "product");
        product.setImage(avatarPath);
        this.productService.handleSaveProduct(product);
        return "redirect:/admin/product";
    }
}
