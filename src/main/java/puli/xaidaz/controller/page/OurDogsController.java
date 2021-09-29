package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.repository.DogRepository;
import puli.xaidaz.service.DogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/hundar")
public class OurDogsController {

    @Autowired
    DogRepository dogRepository;

    @Autowired
    DogService dogService;

    @GetMapping
    public String renderPageLayout(Model model) {

        List<Dog> allDogs = dogRepository.findAll();

        model.addAttribute("listOfDoges", allDogs);

        return "ourDogs";
    }

    @RequestMapping(path = "/hund")
    void renderDog(@RequestParam("hundNamn") String dogName, Model model) {

        List<Dog> allDogs = dogRepository.findAll();

        model.addAttribute("listOfDoges", allDogs);

    }

    @RequestMapping(path = "/nyHund")
    public String addDog() {
        return "newDog";
    }

    @RequestMapping(value = "/sparaHund", method = RequestMethod.POST)
    public String saveDog(HttpServletRequest request, @RequestParam("profilePictureFile") MultipartFile file1, @RequestParam("dogPedigreeFile") MultipartFile file2,
                          @Valid @ModelAttribute("dog") Dog dog, BindingResult result, ModelMap model) throws IOException, ServletException {
        //if (result.hasErrors()) {

            Part part = request.getPart("profilePictureFile");
            dogService.uploadFile(part);

            File dest = new File("\\images\\dogs\\" + "dog.jpg");
            file1.transferTo(dest);

            model.addAttribute("errorMsg", "Dog could not be added");
            //return "newDog";
        //}
        //dogService.saveDog(dog);
        return "ourDogs";
    }
}