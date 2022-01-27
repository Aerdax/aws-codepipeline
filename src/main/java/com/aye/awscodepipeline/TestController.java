package com.aye.awscodepipeline;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author yangjunqi
 * @date 2022/1/27
 */
@RestController
public class TestController {
    @GetMapping("test")
    public String test(){
        return "test";
    }
}
