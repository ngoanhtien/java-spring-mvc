package vn.ngotien.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.ngotien.laptopshop.domain.Product;
import vn.ngotien.laptopshop.repository.ProductRepository;

@Service
public class ProductService {
    private ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void handleSaveProduct(Product product) {
        this.productRepository.save(product);
    }

    public Product getProductById(long id) {
        return this.productRepository.findById(id);
    }

    public List<Product> getAllProducts() {
        return this.productRepository.findAll();
    }

    public void deleteById(long id) {
        this.productRepository.deleteById(id);
    }
}
