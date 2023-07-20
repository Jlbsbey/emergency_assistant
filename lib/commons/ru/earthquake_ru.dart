import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EarthquakeRUPage extends StatefulWidget {
  @override
  State<EarthquakeRUPage> createState() => _EarthquakeRUPageState();
}

class _EarthquakeRUPageState extends State<EarthquakeRUPage> {
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height * 0.06;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight * 1.5,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Землетрясение',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        actions: <Widget>[],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/earth.jpg'), fit: BoxFit.cover)),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(children: <Widget>[
          const ExpansionTile(
            title: Text(
              'Кратко и конкретно',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            children: <Widget>[
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child:
                      Text('•Если вы находитесь в помещении, оставайтесь там.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Если вы готовите пищу, выключите плиту и спрячьтесь.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Если вы находитесь на улице, перейдите на открытое '
                      'место, где падающие предметы вряд ли попадут в вас. Отойдите '
                      'подальше от зданий, линий электропередач и деревьев.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Никогда не пытайтесь выбраться из здания во время землетрясения.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Если вы находитесь в месте, где много людей, избегайте паники и не спешите к выходу. Встаньте на колени и прикройте голову и шею руками и ладонями.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
              ListTile(
                title: Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                      '•Если вы находитесь в автомобиле, медленно сбавьте скорость и остановитесь на обочине улицы.'),
                ),
                visualDensity: VisualDensity(vertical: -4),
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            height: 1,
          ),
          ExpansionTile(
            title: Text(
              'Развёрнуто',
              style: TextStyle(fontSize: 20),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            initiallyExpanded: true,
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Text(
                    "Если вы находитесь в 2- или 3-этажном здании:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Как только вы почувствуете первый толчок, постарайтесь покинуть здание. С момента, когда вы почувствуете первые толчки, до того, как они станут опасными для здания, у вас будет примерно 15-20 секунд.\n"
                  "Возьмите свою сумку и тревожный чемоданчик. Не пользуйтесь лифтом, а поднимайтесь по лестнице, так как во время землетрясения лифт может застрять вместе с вами.\n"
                  "Выходя из помещения, держитесь как можно дальше от зданий, столбов, балконов и других опасных предметов, которые могут упасть на вас во время землетрясения.\n"
                  "Избегайте порванных проводов. Старайтесь всегда оставаться на открытом пространстве, сохраняйте спокойствие и ждите окончания землетрясения.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                  child: Text(
                    "В высотке:",
                    style: TextStyle(color: Colors.red, fontSize: 25),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Не паникуйте. Если вы находитесь выше третьего этажа, вы можете не успеть выбраться из здания до того, "
                  "как землетрясение станет опасным для строения. В этой ситуации вероятность получения травм будет меньше, если "
                  "вы останетесь на месте и найдете максимально безопасное место.\n"
                  "Устройтесь на полу под прочным столом, стулом или кроватью, желательно у внутренней стены. Примите позу эмбриона. "
                  "Если возможно, накройте голову и шею чем-нибудь подходящим, например, подушкой, чтобы защититься от падающих "
                  "осколков и битого стекла. Если ничего подходящего нет, прикройте голову руками.\n"
                  "Держитесь подальше от шкафов, полок и другой мебели, которая может упасть на вас. Также избегайте внешних "
                  "стен, так как они обрушатся первыми.\n"
                  "Несмотря на миф о том, что спинка прочного мягкого кресла или дивана может спасти вас при обрушении верхнего этажа, "
                  "эта теория ошибочна. Главным образом потому, что слишком сложно предсказать, где произойдет обрушение. Кроме "
                  "того, диван может защитить только в том случае, если обрушение потолка происходит целыми секциями, а не частями. "
                  "По этой причине лучше спрятаться под прочным столом или кроватью и использовать диван только тогда, когда других вариантов нет.\n"
                  "Существует также мнение, что во время землетрясения нужно стоять в дверном проеме. Это может быть верно для старых кирпичных "
                  "или каменных стен с деревянной перегородкой. Однако в современных сборных и каркасных домах дверные проемы могут быть "
                  "не намного прочнее, чем любая другая часть здания. Более того, основной причиной смерти при землетрясении является не "
                  "обрушение верхнего этажа, а травмы из-за падения относительно мелких обломков, и в таких случаях дверной проем не будет "
                  "надежным убежищем.\n"
                  "Если вы находитесь на кухне, при первых признаках землетрясения выключите плиту. Это необходимо для того, чтобы снизить "
                  "риск возникновения пожара. Однако если до плиты нужно идти относительно далеко, лучше не терять времени и спрятаться.\n"
                  "Если вы лежите в кровати и не можете спрятаться под ней, накройтесь одеялами и подушками. Если вы находитесь в инвалидной "
                  "коляске, не забудьте заблокировать колеса.\n"
                  "Переждите в своем укрытии, пока землетрясение не закончится.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Row(
                  children: [
                    Text(
                      "На открытом воздухе:",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Во время землетрясения безопаснее всего находиться на открытом воздухе, поэтому не пытайтесь зайти в помещение. "
                  "Стойте как можно дальше от зданий, топливных и газовых труб, канализационных люков и линий электропередач, которые "
                  "могут упасть на вас. Кроме того, не стойте под балконами, арками и другими частями зданий, так как они могут обрушиться, "
                  "даже если само здание останется целым.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Row(
                  children: [
                    Text(
                      "В машине:",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Останавливайтесь на обочине дороги как можно дальше от столбов, линий электропередач, мостов и других объектов, на которые "
                  "вы можете упасть. Также не останавливайтесь над подземными переходами, так как они могут обрушиться во время землетрясения.\n"
                  "Поставьте машину на ручной тормоз и дождитесь прекращения землетрясения. Не выходите из автомобиля, так как он может "
                  "служить защитой от падающих осколков и предметов.\n"
                  "Не забудьте включить радио, так как по нему может передаваться важная информация. Если на машину упал электрический провод, "
                  "позвоните по телефону 112 и оставайтесь в машине, пока спасатели убирают провод.\n"
                  "Когда землетрясение закончится и вы сможете продолжить свой путь, внимательно следите за препятствиями на дороге."
                  "Это могут быть поваленные столбы, оборванные линии электропередач, трещины в дорожном покрытии, затопленные участки "
                  "из-за дамб, обрушившиеся мосты и эстакады.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Row(
                  children: [
                    Text(
                      "В общественном месте:",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Если вы находитесь на стадионе, в театре или подобном месте, не бегите сразу к выходу, потому что у всех остальных в "
                  "голове будет та же мысль, и толпа может просто придавить вас. Оставайтесь на своем месте, сидите между креслами и "
                  "прикрывайте голову и шею руками, курткой или сумкой. Когда землетрясение закончится, уходите, стараясь не быть "
                  "раздавленным или чтобы вам ничего не упало на голову.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Row(
                  children: [
                    Text(
                      "На берегу моря:",
                      style: TextStyle(color: Colors.red, fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  "Теоретически, на открытом морском берегу, вдали от зданий и линий электропередач, во время землетрясения должно быть безопасно. "
                  "Однако если землетрясение длится 20 минут и более, вам следует поспешить и уйти на возвышенность. Это связано с тем, "
                  "что землетрясение может вызвать цунами. Уходите вглубь материка, на расстояние не менее 3 километров, или в место, "
                  "которое находится на высоте не менее 30 метров над уровнем моря. Передвигайтесь быстро и пешком, чтобы избежать пробок, "
                  "автомобильных аварий и других опасных ситуаций.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16),
                child: Text(
                  "Что делать, если вы оказались погребены под завалами:",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 8.0, bottom: h),
                child: Text(
                  "Если вы оказались под завалами, постарайтесь не паниковать и как можно меньше двигаться, чтобы не поднимать пыль. "
                  "Не делайте резких движений, даже если у вас зажата рука или нога, и не пытайтесь освободиться, так как это может "
                  "способствовать дальнейшему обрушению здания. Прикройте нос и рот платком или одеждой, чтобы не дышать пылью. "
                  "Если у вас есть телефон, используйте его для вызова службы 112 и спасателей.\n"
                  "Если вы используете телефон для освещения, периодически выключайте его, чтобы сэкономить заряд батареи. Не "
                  "разжигайте огонь, так как искры могут привести к взрыву, если поблизости есть утечка газа или разлив топлива. "
                  "Кроме того, при горении потребляется кислород, что может быть опасно в замкнутом пространстве. Если возможно, "
                  "закрепите потолок над собой с помощью подручных предметов, например, досок или обрезков мебели.\n"
                  "Если вы долгое время находитесь под завалами, помните, что воду можно пить из бака с водой, а трубы радиатора "
                  "можно использовать для объявления своего местонахождения. Берегите силы и не паникуйте, помните, что человек "
                  "может обходиться без еды более 2 недель.\n"
                  "Когда прибудут спасатели, постучите по трубам радиатора или по стене, чтобы привлечь внимание спасателей и "
                  "сообщить о своем местонахождении. Однако не бейте слишком сильно, так как это может привести к тому, что на "
                  "вас что-нибудь упадет. Вы можете греметь связкой ключей, использовать телефон или свисток, чтобы сообщить о своем "
                  "местонахождении звуком. Кричите только в случае крайней необходимости, чтобы не тратить энергию и кислород.\n"
                  "Когда спасатели услышат вас и начнут искать, назовите свое имя, расскажите о своих травмах, сообщите, где вы "
                  "находились в здании в момент землетрясения и что вы видите вокруг себя.",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ]),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.04,
              child: ElevatedButton.icon(
                onPressed: _scrollToTop,
                icon: Icon(Icons.arrow_upward),
                label: Text("Наверх"),
              ),
            ),
    );
  }
}
