package it.uniroma3.ps2017.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.ps2017.model.Autore;
import it.uniroma3.ps2017.model.Opera;
import it.uniroma3.ps2017.model.Role;
import it.uniroma3.ps2017.model.Utente;
import it.uniroma3.ps2017.repository.AutoreRepository;
import it.uniroma3.ps2017.repository.OperaRepository;
import it.uniroma3.ps2017.repository.RoleRepository;
import it.uniroma3.ps2017.repository.UtenteRepository;

@Service
@Transactional
public class InitDbService {
	
	@Autowired
	private UtenteRepository utenteRepository;
	@Autowired
	private RoleRepository roleRepository;
	@Autowired
	private AutoreRepository autoreRepository;
	@Autowired
	private OperaRepository operaRepository;
	
	@PostConstruct
	public void init(){
		Role roleUser = new Role();
		roleUser.setRole("ROLE_USER");
		roleRepository.save(roleUser);

		Role roleAdmin = new Role();
		roleAdmin.setRole("ROLE_ADMIN");
		roleRepository.save(roleAdmin);

		Utente admin = new Utente();
		admin.setEnabled(true);
		admin.setUsername("jiripinkas");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		admin.setPassword(encoder.encode("errataaa"));	
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleAdmin);
		roles.add(roleUser);
		admin.setRuoli(roles);
		utenteRepository.save(admin);
		
		Utente io = new Utente();
		io.setEnabled(true);
		io.setUsername("asdasd");
		io.setPassword(encoder.encode("asdasdasd"));
		List<Role> ruoli = new ArrayList<>();
		ruoli.add(roleUser);
		io.setRuoli(ruoli);
		utenteRepository.save(io);

		Autore ernestoManolesto = new Autore();
		ernestoManolesto.setNome("Ernesto");
		ernestoManolesto.setCognome("Manolesto");
		ernestoManolesto.setNazione("italiana");
		ernestoManolesto.setDataNascita(26, 10, 1909);
		ernestoManolesto.setDataMorte(23, 10, 2019);
		Autore julioPorrata = new Autore();
		julioPorrata.setNome("Julio");
		julioPorrata.setCognome("Porrata");
		julioPorrata.setNazione("spagnola");
		julioPorrata.setDataNascita(11, 2, 1924);
		julioPorrata.setDataMorte(28, 2, 1997);
		Autore reneTualet = new Autore();
		reneTualet.setNome("René");
		reneTualet.setCognome("Tualet");
		reneTualet.setNazione("francese");
		reneTualet.setDataNascita(30, 9, 1933);
		reneTualet.setDataMorte(4, 4, 2001);
		Autore walterWalzer = new Autore();
		walterWalzer.setNome("Walter");
		walterWalzer.setCognome("Walzer");
		walterWalzer.setNazione("austriaco");
		walterWalzer.setDataNascita(19, 9, 1934);
		walterWalzer.setDataMorte(5, 6, 1998);
		Autore heinzFreinpolizein = new Autore();
		heinzFreinpolizein.setNome("Heinz");
		heinzFreinpolizein.setCognome("Freinpolizein");
		heinzFreinpolizein.setNazione("tedesco");
		heinzFreinpolizein.setDataNascita(17, 6, 1903);
		heinzFreinpolizein.setDataMorte(19, 7, 1997);
		Autore rubenShamenns = new Autore();
		rubenShamenns.setNome("Ruben");
		rubenShamenns.setCognome("Shamenns");
		rubenShamenns.setNazione("americano");
		rubenShamenns.setDataNascita(4, 9, 1904);
		rubenShamenns.setDataMorte(17, 1, 2006);
		Autore albertoDegliAlberti = new Autore();
		albertoDegliAlberti.setNome("Alberto");
		albertoDegliAlberti.setCognome("Degli Alberti");
		albertoDegliAlberti.setNazione("italiana");
		albertoDegliAlberti.setDataNascita(6, 5, 1934);
		albertoDegliAlberti.setDataMorte(13, 6, 1995);
		Autore louisEmilthon = new Autore();
		louisEmilthon.setNome("Louis");
		louisEmilthon.setCognome("Emilthon");
		louisEmilthon.setNazione("inglese");
		louisEmilthon.setDataNascita(31, 3, 1925);
		louisEmilthon.setDataMorte(17, 9, 1992);
		Autore massimoSgravo = new Autore();
		massimoSgravo.setNome("Massimo");
		massimoSgravo.setCognome("Sgravo");
		massimoSgravo.setNazione("italiana");
		massimoSgravo.setDataNascita(14, 3, 1900);
		massimoSgravo.setDataMorte(1, 2, 1980);
		Autore guidoLacarriola = new Autore();
		guidoLacarriola.setNome("Guido");
		guidoLacarriola.setCognome("Lacarriola");
		guidoLacarriola.setNazione("italiana");
		guidoLacarriola.setDataNascita(3, 10, 1921);
		guidoLacarriola.setDataMorte(6, 6, 1984);
		
		List<Opera> opereErnesto = new ArrayList<>();
		Opera opera1 = new Opera();
		opera1.setTitolo("Le guardie e i ladri");
		opera1.setAutore(ernestoManolesto);
		opera1.setAnno(1976);
		opera1.setDimensioni("100x74");
		opera1.setTecnica("olio su pera");
		opera1.setUrl("https://cinemaitalianodatabase.files.wordpress.com/2018/02/guardia-e-ladri-scena.jpg?w=666");
		opereErnesto.add(opera1);
		Opera opera2 = new Opera();
		opera2.setTitolo("I cavalieri di Morgana");
		opera2.setAutore(ernestoManolesto);
		opera2.setAnno(1979);
		opera2.setDimensioni("96x56");
		opera2.setTecnica("pastelli incerati");
		opera2.setUrl("https://images.everyeye.it/img-notizie/i-cavalieri-zodiaco-arrivano-silver-saint-repliche-italia-2-v6-358418.jpg");
		opereErnesto.add(opera2);
		Opera opera3 = new Opera();
		opera3.setTitolo("Amici malati");
		opera3.setAutore(ernestoManolesto);
		opera3.setAnno(1968);
		opera3.setDimensioni("83x72");
		opera3.setTecnica("pennellate forti");
		opera3.setUrl("https://lh3.googleusercontent.com/proxy/SkaIfgaQQZiwRHU1xJZ_WXHStn7U9q7tgAdQZDBod-DSPec8Hv1Clnswf0cppIu262r1RZdzeveIO9Qu8i7TLPxkNx2iBGLOtbSLWPbSdKC8OhSy-Vro-NMLYn-q5Rs5cGY");
		opereErnesto.add(opera3);
		
		List<Opera> opereJulio = new ArrayList<>();
		Opera opera4 = new Opera();
		opera4.setTitolo("La amalia bruta");
		opera4.setAutore(julioPorrata);
		opera4.setAnno(1992);
		opera4.setDimensioni("82x58");
		opera4.setTecnica("olio su pera");
		opera4.setUrl("https://www.culturalfemminile.com/wp-content/uploads/2019/01/1819-Lady-Selina-Meade.jpeg");
		opereJulio.add(opera4);
		Opera opera5 = new Opera();
		opera5.setTitolo("Siempre hermanos");
		opera5.setAutore(julioPorrata);
		opera5.setAnno(1961);
		opera5.setDimensioni("98x58");
		opera5.setTecnica("chiaroscuro al sole");
		opera5.setUrl("https://a.wattpad.com/cover/52879257-288-k131529.jpg");
		opereJulio.add(opera5);
		
		List<Opera> opereRene = new ArrayList<>();
		Opera opera7 = new Opera();
		opera7.setTitolo("Le alpi scoscese");
		opera7.setAutore(reneTualet);
		opera7.setAnno((int) (Math.random()*50+1960));
		opera7.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera7.setTecnica("pastelli incerati");
		opera7.setUrl("https://st.hzcdn.com/simgs/69c1603d04198025_8-2771/rustico-facciata.jpg");
		opereRene.add(opera7);
		Opera opera8 = new Opera();
		opera8.setTitolo("Solstizio del primo maggio");
		opera8.setAutore(reneTualet);
		opera8.setAnno((int) (Math.random()*50+1960));
		opera8.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera8.setTecnica("olio su pera");
		opera8.setUrl("https://services.meteored.com/img/article/big/equinozio-di-primavera-quando-nel-2020-236621-1.jpg");
		opereRene.add(opera8);
		Opera opera9 = new Opera();
		opera9.setTitolo("Gli abitanti del Congo che mangiano i cereali");
		opera9.setAutore(reneTualet);
		opera9.setAnno((int) (Math.random()*50+1960));
		opera9.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera9.setTecnica("pennellate forti");
		opera9.setUrl("https://gift-static.kxscdn.com/wp-content/uploads/2018/11/colonialismo-palma.jpg");
		opereRene.add(opera9);
		
		List<Opera> opereWalter = new ArrayList<>();
		Opera opera10 = new Opera();
		opera10.setTitolo("Albini al sole");
		opera10.setAutore(walterWalzer);
		opera10.setAnno((int) (Math.random()*50+1960));
		opera10.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera10.setTecnica("chiaroscuro sul bianco");
		opera10.setUrl("https://www.bambino.it/wp-content/uploads/2017/10/6fb79736f375.jpg");
		opereWalter.add(opera10);
		Opera opera11 = new Opera();
		opera11.setTitolo("I cimeli di zia Ada");
		opera11.setAutore(walterWalzer);
		opera11.setAnno((int) (Math.random()*50+1960));
		opera11.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera11.setTecnica("argilla di mattoni");
		opera11.setUrl("https://i.res.24o.it/images2010/SoleOnLine5/_Immagini/Notizie/Italia/2011/12/vasi-ansa-258.jpg?uuid=34982cb8-1ce5-11e1-9ff2-6ded56993d22");
		opereWalter.add(opera11);
		Opera opera12 = new Opera();
		opera12.setTitolo("Piatti di coccio");
		opera12.setAutore(walterWalzer);
		opera12.setAnno((int) (Math.random()*50+1960));
		opera12.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera12.setTecnica("argilla di mattoni");
		opera12.setUrl("https://www.conforama.it/media/cache/app_shop_product_xlarge_thumbnail/fb/46/f1b2c6503ec408ddaf89bc9d68f2.jpeg");
		opereWalter.add(opera12);
		Opera opera13 = new Opera();
		opera13.setTitolo("Rododendri e ovini");
		opera13.setAutore(walterWalzer);
		opera13.setAnno((int) (Math.random()*50+1960));
		opera13.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera13.setTecnica("latte di capra essiccato su tela");
		opera13.setUrl("https://www.formaggi-capre-ticino.ch/images/2020/03/14/capre-mirtilli-rododendri__850x638.jpg");
		opereWalter.add(opera13);
		Opera opera14 = new Opera();
		opera14.setTitolo("Pennellate amiche");
		opera14.setAutore(walterWalzer);
		opera14.setAnno((int) (Math.random()*50+1960));
		opera14.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera14.setTecnica("pennellate forti");
		opera14.setUrl("https://image.freepik.com/vettori-gratuito/colorata-pennellate-collezione_1102-157.jpg");
		opereWalter.add(opera14);
		Opera opera15 = new Opera();
		opera15.setTitolo("Autocarri in manovra");
		opera15.setAutore(walterWalzer);
		opera15.setAnno((int) (Math.random()*50+1960));
		opera15.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera15.setTecnica("nonni al cantiere");
		opera15.setUrl("https://reggionline-obce2ympjgvjli4n.netdna-ssl.com/wp-content/uploads/2019/09/incidente-san-lazzaro-9-9-19-770x470.jpg");
		opereWalter.add(opera15);
		
		List<Opera> opereHeinz = new ArrayList<>();
		Opera opera16 = new Opera();
		opera16.setTitolo("Presine in giro");
		opera16.setAutore(heinzFreinpolizein);
		opera16.setAnno((int) (Math.random()*50+1960));
		opera16.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera16.setTecnica("uncinetto");
		opera16.setUrl("https://instamamme.net/wp-content/uploads/2016/11/FullSizeRender-25.jpg");
		opereHeinz.add(opera16);
		Opera opera17 = new Opera();
		opera17.setTitolo("Pioggia a Hockenheim");
		opera17.setAutore(heinzFreinpolizein);
		opera17.setAnno((int) (Math.random()*50+1960));
		opera17.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera17.setTecnica("acquerelli ad acqua");
		opera17.setUrl("https://www.sportfair.it/wp-content/uploads/2018/07/hockenheim-1280x720.jpg");
		opereHeinz.add(opera17);
		Opera opera18 = new Opera();
		opera18.setTitolo("Crauti grossi e crauti piccoli");
		opera18.setAutore(heinzFreinpolizein);
		opera18.setAnno((int) (Math.random()*50+1960));
		opera18.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera18.setTecnica("olio su pera");
		opera18.setUrl("https://lh3.googleusercontent.com/proxy/qJJX5aTa_JWFdqaMrk1K1lfC18zvAq0P3M3rA291MqHCfdTFr3my3EdJ5Ffrz15M3b9v-kh-LR4Ilw9_IU8XxjwScwA3vTYR0KC-SQeKSwlh35qKjQLbuPdJH_o6RaR2oktjoEJksrE");
		opereHeinz.add(opera18);
		Opera opera19 = new Opera();
		opera19.setTitolo("Sandali e calzini (Odio n.1)");
		opera19.setAutore(heinzFreinpolizein);
		opera19.setAnno((int) (Math.random()*50+1960));
		opera19.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera19.setTecnica("inguardabile");
		opera19.setUrl("https://www.stile.it/wp-content/uploads/2016/07/calzini.jpg");
		opereHeinz.add(opera19);
		Opera opera20 = new Opera();
		opera20.setTitolo("Pretzel scontati");
		opera20.setAutore(heinzFreinpolizein);
		opera20.setAnno((int) (Math.random()*50+1960));
		opera20.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera20.setTecnica("braccino corto");
		opera20.setUrl("https://www.myusa.it/wp-content/uploads/2020/03/ricetta-pretzel-716x403.jpg");
		opereHeinz.add(opera20);
		/*
		Opera opera = new Opera();
		opera.setTitolo("");
		opera.setAutore(heinzFreinpolizein);
		opera.setAnno((int) (Math.random()*50+1960));
		opera.setDimensioni((int) (Math.random()*30+80) + "x" + (int) (Math.random()*30+50));
		opera.setTecnica("");
		opera.setUrl("");
		opereHeinz.add(opera); */
		List<Opera> opereGuido = new ArrayList<>();
		Opera opera6 = new Opera();
		opera6.setTitolo("Sottomarino a Catania");
		opera6.setAutore(guidoLacarriola);
		opera6.setAnno((int) (Math.random()*50+1960));
		opera6.setDimensioni((int) (Math.random()*30+80) + " " + (int) (Math.random()*30+50));
		opera6.setTecnica("acquerelli ad acqua");
		opera6.setUrl("https://www.mediterraneocronaca.it/wp-content/uploads/2019/03/Sottomarino-nucleare.jpg");
		opereGuido.add(opera6);
		

		autoreRepository.save(ernestoManolesto);
		autoreRepository.save(julioPorrata);
		autoreRepository.save(reneTualet);
		autoreRepository.save(walterWalzer);
		autoreRepository.save(heinzFreinpolizein);
		autoreRepository.save(rubenShamenns);
		autoreRepository.save(albertoDegliAlberti);
		autoreRepository.save(louisEmilthon);
		autoreRepository.save(guidoLacarriola);
		
		operaRepository.save(opera1);
		operaRepository.save(opera2);
		operaRepository.save(opera3);
		operaRepository.save(opera4);
		operaRepository.save(opera5);
		operaRepository.save(opera6);
		operaRepository.save(opera7);
		operaRepository.save(opera8);
		operaRepository.save(opera9);
		operaRepository.save(opera10);
		operaRepository.save(opera11);
		operaRepository.save(opera12);
		operaRepository.save(opera13);
		operaRepository.save(opera14);
		operaRepository.save(opera15);
		operaRepository.save(opera16);
		operaRepository.save(opera17);
		operaRepository.save(opera18);
		operaRepository.save(opera19);
		operaRepository.save(opera20);
		
	}

}
