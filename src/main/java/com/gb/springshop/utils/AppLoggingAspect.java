package com.gb.springshop.utils;

import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class AppLoggingAspect {

    @After("execution(public void com.gb.springshop.services.ShoppingCartService.addToCart(..))") // pointcut expression
    public void aopSimpleMethod() {
        System.out.println("добален товар в корзину");
    }
}
