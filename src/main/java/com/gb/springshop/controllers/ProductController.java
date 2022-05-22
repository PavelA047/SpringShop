package com.gb.springshop.controllers;

import com.gb.springshop.entities.Product;
import com.gb.springshop.entities.ProductImage;
import com.gb.springshop.services.CategoryService;
import com.gb.springshop.services.ImageSaverService;
import com.gb.springshop.services.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
@RequestMapping("/products")
public class ProductController {
    private ProductService productService;
    private CategoryService categoryService;
    private ImageSaverService imageSaverService;
    private final String UPLOAD_DIR = "./uploads/";
    private final Logger logger = LoggerFactory.getLogger(RegistrationController.class);

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @Autowired
    public void setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @Autowired
    public void setImageSaverService(ImageSaverService imageSaverService) {
        this.imageSaverService = imageSaverService;
    }

    @GetMapping
    public String newProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("categories", categoryService.getAllCategories());
        return "new_product_form";
    }

    @PostMapping
    public String addProduct(
            @Valid Product product,
            @RequestParam("file") MultipartFile file,
            BindingResult theBindingResult,
            Model model) {

        if (productService.isProductWithTitleExists(product.getTitle())) {
            theBindingResult.addError(new ObjectError("product.title", "Product with current username already exists"));
        }

        if (theBindingResult.hasErrors()) {
            model.addAttribute("product", new Product());
            model.addAttribute("categories", categoryService.getAllCategories());
            return "new_product_form";
        }

        if (!file.isEmpty()) {
            String pathToSavedImage = imageSaverService.saveFile(file);
            ProductImage productImage = new ProductImage();
            productImage.setPath(pathToSavedImage);
            productImage.setProduct(product);
            product.addImage(productImage);
        }

        productService.saveProduct(product);
        return "redirect:/shop";


//        // normalize the file path
//        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
//
//        // save the file on the local file system
//        try {
//            Path path = Paths.get(UPLOAD_DIR + fileName);
//            Files.copy(file.getInputStream(), path, StandardCopyOption.REPLACE_EXISTING);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//        // return success response
//        attributes.addFlashAttribute("message", "You successfully uploaded " + fileName + '!');
//
//        String productTitle = product.getTitle();
//        logger.debug("Add product: " + productTitle);
//        if (theBindingResult.hasErrors()) {
//            return "redirect:/products";
//        }
//
//        Product existing = productService.getProductByTitle(productTitle);
//        if (existing != null) {
//            theModel.addAttribute("product", product);
//            theModel.addAttribute("registrationError", "Product with current username already exists");
//            logger.debug("Product already exists.");
//            return "redirect:/products";
//        }
//
//
//        productService.saveProduct(product);
//        logger.debug("Successfully created product: " + productTitle);
//
//        return "redirect:/products";
    }
}
