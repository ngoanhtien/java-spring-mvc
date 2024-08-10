package vn.ngotien.laptopshop.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;
import vn.ngotien.laptopshop.domain.Product;
import vn.ngotien.laptopshop.domain.User;
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

    @GetMapping("/admin/product/{id}")
    public String getProductDetailPage(Model model, @PathVariable("id") long id) {
        Product product = this.productService.getProductById(id);
        model.addAttribute("product", product);
        return "admin/product/detail";
    }

    @GetMapping("/admin/product/update/{id}")
    public String getProductUpdatePage(Model model, @PathVariable("id") long id) {
        Product product = this.productService.getProductById(id);
        model.addAttribute("newProduct", product);
        return "admin/product/update";
    }

    @PostMapping("/admin/product/update")
    public String postUpdateProduct(Model model, @Valid @ModelAttribute("newProduct") Product product,
            BindingResult newProductBindingResult, @RequestParam("file") MultipartFile multipartFile) {
        List<FieldError> errors = newProductBindingResult.getFieldErrors();
        for (FieldError fieldError : errors) {
            System.out.println(fieldError.getField() + " - " + fieldError.getDefaultMessage());
        }
        if (newProductBindingResult.hasErrors()) {
            return "/admin/product";
        }
        String avatarPath = this.uploadService.handleUploadFile(multipartFile, "product");
        Product currentProduct = this.productService.getProductById(product.getId());
        if (currentProduct != null) {
            currentProduct.setName(product.getName());
            currentProduct.setPrice(product.getPrice());
            currentProduct.setDetailDesc(product.getDetailDesc());
            currentProduct.setShortDesc(product.getShortDesc());
            currentProduct.setQuantity(product.getQuantity());
            currentProduct.setFactory(product.getFactory());
            currentProduct.setTarget(product.getTarget());
            currentProduct.setImage(avatarPath);
        }
        this.productService.handleSaveProduct(currentProduct);
        return "redirect:/admin/product";
    }

    @GetMapping("/admin/product/delete/{id}")
    public String getDeletePage(Model model, @PathVariable("id") long id) {
        model.addAttribute("id", id);
        Product product = new Product();
        product.setId(id);
        model.addAttribute("newProduct", product);
        return "admin/product/delete";
    }

    @PostMapping("/admin/product/delete")
    public String postDeletePage(Model model, @ModelAttribute("newProduct") Product product) {
        this.productService.deleteById(product.getId());
        return "redirect:/admin/product";
    }

}
