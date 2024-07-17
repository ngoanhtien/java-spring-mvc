package vn.hoidanit.laptopshop.service;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    // public User userHandleSave(User user) {
    // return this.userRepository.save(user);
    // }

    public User userHandleSave(User user) {
        User u = this.userRepository.save(user);
        System.out.println(u);
        return u;
    }
}
