package vn.ngotien.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import vn.ngotien.laptopshop.domain.Cart;
import vn.ngotien.laptopshop.domain.CartDetail;
import vn.ngotien.laptopshop.domain.Product;
import vn.ngotien.laptopshop.domain.User;
import vn.ngotien.laptopshop.repository.CartDetailRepository;
import vn.ngotien.laptopshop.repository.CartRepository;
import vn.ngotien.laptopshop.repository.ProductRepository;
import vn.ngotien.laptopshop.repository.UserRepository;

@Service
public class ProductService {
    private ProductRepository productRepository;
    private CartRepository cartRepository;
    private CartDetailRepository cartDetailRepository;
    private UserService userService;

    public ProductService(ProductRepository productRepository, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository, UserService userService) {
        this.productRepository = productRepository;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.userService = userService;
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

    public void handleAddProductToCart(String email, long productId, HttpSession session) {
        User user = this.userService.getUserByEmail(email);

        // check user đã có cart chưa ? nếu chưa -> tạo mới
        if (user != null) {
            Cart cart = this.cartRepository.findByUser(user);

            if (cart == null) {
                Cart otherCart = new Cart();
                otherCart.setUser(user);
                otherCart.setSum(0);

                cart = this.cartRepository.save(otherCart);
            }

            // Lấy product
            Product product = this.productRepository.findById(productId);

            // check product đã tồn tại trong giỏ hàng chưa
            CartDetail oldDetail = this.cartDetailRepository.findByCartAndProduct(cart, product);

            if (oldDetail == null) {
                // Tạo mới cart_detail
                CartDetail cartDetail = new CartDetail();
                cartDetail.setPrice(product.getPrice());
                cartDetail.setQuantity(1);
                cartDetail.setCart(cart);
                cartDetail.setProduct(product);
                this.cartDetailRepository.save(cartDetail);

                // update sum in cart
                int sum = cart.getSum() + 1;
                cart.setSum(sum);
                this.cartRepository.save(cart);
                session.setAttribute("sum", sum);
            } else {
                oldDetail.setQuantity(oldDetail.getQuantity() + 1);
                this.cartDetailRepository.save(oldDetail);
            }
        }
    }

    public Cart fetchByUser(User user) {
        return this.cartRepository.findByUser(user);
    }
}
