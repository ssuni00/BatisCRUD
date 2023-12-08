package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
public class MarketController {

    @Autowired
    MarketServiceImpl marketService;

    @RequestMapping(value="/")
    public String home(){
        return "home";
    }

    @RequestMapping(value = "market/list", method = RequestMethod.GET)
    public String marketlist(Model model) {
        model.addAttribute("list", marketService.getMarketList());
        return "list";
    }

    @RequestMapping(value = "market/add", method = RequestMethod.GET)
    public String addPost() {
        return "addform";
    }

    @RequestMapping(value = "market/addok", method = RequestMethod.POST)
    public String addPostOk(MarketVO vo) {
        if (marketService.insertMarket(vo) == 0)
            System.out.println("데이터 추가 실패 ");
        else
            System.out.println("데이터 추가 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "market/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        MarketVO marketVO = marketService.getMarket(id);
        model.addAttribute("u", marketVO);
        return "editform";
    }

    @RequestMapping(value = "market/editok", method = RequestMethod.POST)
    public String editPostOk(MarketVO vo) {
        if(marketService.updateMarket(vo) == 0)
            System.out.println("데이터 수정 실패 ");
        else
            System.out.println("데이터 수정 성공!!!");
        return "redirect:list";
    }

    @RequestMapping(value = "market/view/{id}", method = RequestMethod.GET)
    public String viewPost(@PathVariable("id") int id, Model model) {
        MarketVO marketVO = marketService.getMarket(id);
        model.addAttribute("u", marketVO);
        return "view";
    }


    @RequestMapping(value = "market/deleteok/{id}", method = RequestMethod.GET)
    public String deletePostOk(@PathVariable("id") int id) {
        if (marketService.deleteMarket(id) == 0)
            System.out.println("데이터 삭제 실패 ");
        else
            System.out.println("데이터 삭제 성공!!!");

        return "redirect:../list";
    }
}
