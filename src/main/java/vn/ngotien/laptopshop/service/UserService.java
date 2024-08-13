package vn.ngotien.laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import vn.ngotien.laptopshop.domain.Role;
import vn.ngotien.laptopshop.domain.User;
import vn.ngotien.laptopshop.domain.dto.RegisterDTO;
import vn.ngotien.laptopshop.repository.RoleRepository;
import vn.ngotien.laptopshop.repository.UserRepository;

@Service
public class UserService {
    private UserRepository userRepository;
    private RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    // public User userHandleSave(User user) {
    // return this.userRepository.save(user);
    // }

    public User userHandleSave(User user) {
        User u = this.userRepository.save(user);
        System.out.println(u);
        return u;
    }

    public List<User> getAllUsers() {
        return this.userRepository.findAll();
    }

    public List<User> getAllUsersByEmail(String email) {
        return this.userRepository.findByEmail(email);

    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public void deleteUser(long id) {
        this.userRepository.deleteById(id);
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public User RegisterDTOtoUser(RegisterDTO registerDTO) {
        User user = new User();
        user.setFullName(registerDTO.getFirstName() + " " + registerDTO.getLastName());
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        return user;
    }

    public boolean checkEmailExist(String email) {
        return this.userRepository.existsByEmail(email);
    }

    public User getUserByEmail(String email) {
        return this.userRepository.findOneByEmail(email);
    }
}
