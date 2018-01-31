package kz.iitu.SuperEyesApp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javassist.NotFoundException;
import kz.iitu.SuperEyesApp.model.Game;
import kz.iitu.SuperEyesApp.repository.GameRepository;

@Controller
@RequestMapping(value="/games")
public class GameController {

	@Autowired
	private GameRepository gameRepo;
	
	@GetMapping("/{gameId}")
	public String showGameView(@PathVariable("gameId") Integer gameId, Model model) throws NotFoundException {
		Game game = gameRepo.findOne(gameId);
		if (game == null) 
			throw new NotFoundException("Игра не найдена");
		
		model.addAttribute("game", game);
		return "game_view";
	}
	
	@GetMapping
	public String showAllGames(Model model) {
		List<Game>games = new ArrayList<>();
		games = gameRepo.findAllEnabled();
		model.addAttribute("games", games);
		
		return "games";
	}
}
