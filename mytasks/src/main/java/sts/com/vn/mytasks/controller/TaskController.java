package sts.com.vn.mytasks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import sts.com.vn.mytasks.model.Task;
import sts.com.vn.mytasks.service.TaskService;

@Controller
public class TaskController {

    @Autowired
    private TaskService service;

    @RequestMapping(value = {"/task"}, method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("task", new Task());
        model.addAttribute("list", this.service.getAll());
        return "task/list";
    }

    @RequestMapping(value= "/task/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("task")Task o, BindingResult result){

//        if (result.hasErrors()) {
//            return "task/add";
//        }
        if(o.getId() == 0){
            //new person, add it
            this.service.save(o);
        }else{
            //existing person, call update
            this.service.save(o);
        }
        return "redirect:/task";
    }

    @RequestMapping("/task/remove/{id}")
    public String remove(@PathVariable("id") int id){

        this.service.delete(id);
        return "redirect:/task";
    }

    @RequestMapping("/task/edit/{id}")
    public String edit(@PathVariable("id") int id, Model model){
        model.addAttribute("task", this.service.getById(id));
        model.addAttribute("list", this.service.getAll());
        return "task/edit";
    }

    @RequestMapping("/task/add")
    public String add(Model model){
        model.addAttribute("task", new Task());
        return "task/add";
    }
}
