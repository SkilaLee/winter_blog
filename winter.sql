-- phpMyAdmin SQL Dump
-- version 4.2.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-03-01 09:52:19
-- 服务器版本： 5.5.20-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `winter`
--

-- --------------------------------------------------------

--
-- 表的结构 `blog_content`
--

CREATE TABLE IF NOT EXISTS `blog_content` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
`content_id` int(11) NOT NULL,
  `content_title` varchar(225) NOT NULL,
  `type` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blog_content`
--

INSERT INTO `blog_content` (`user_id`, `user_name`, `content_id`, `content_title`, `type`, `content`, `time`) VALUES
(665626, 'zy', 1, '学婊', 'about study', '一个二个就知道装,卧槽,你是麻袋么,就知道装!', '2015-02-27 09:12:42'),
(665626, 'zy', 2, 'Chapter1', 'about study', '　1998年，阿衡第一次见到言希时，眼睛几乎是被刺痛了的。\r\n　　在来到B城之前，有关这个城市的繁华是被圈在家中在在最宝贝的黑匣子中的，伴着梅雨季节的不定时发作，清晰甜美的女声在含糊的电流中异常温暖。她往往是搬着竹凳摇着蒲扇坐在药炉前，不远处撑起的木床上躺着温柔腼腆的在在，瞳仁好似她幼时玩过的玻璃球一般的剔透漂亮，忽闪着睫毛，轻轻问她，\r\n　　“姐，今天的药，不苦，对不对？”\r\n　　她抓着蒲扇，动作往往放缓，鼻中嗅着浓郁的药涩，心中为难，不敢回头，声音糯糯的，张口便是支吾“嗯……不苦……”\r\n　　“姐，你说不苦，我信。”在在看她看得分明，轻轻微笑，清澈的眸中满是笑意，消瘦的脸庞平添了几分生动。\r\n　　于是，她把放温的药喂到在在唇边时，眼睛定是不看他的。\r\n　　她不好，遇到解决不了的问题时，往往选择逃避。\r\n　　而后，她离开家，被带到另一个家中时，连告别，也是直觉上轻描淡写地忽略。\r\n　　从南端到北端，从贫瘠到富贵，温衡拒绝了过渡。往好听了说，是“生性温和，随遇而安”，难听了，则免不去“冷漠自私，狼心狗肺”。\r\n　　镇上人不解，说她云衡在云家生活了十六年，喊着云爸云妈“阿爸阿妈”那也是真心实意毫无做作的，怎地说有了生父母便忘了养恩了呢？\r\n　　开凉茶铺的镇长儿媳妇眉眼一挑，笑开了几分嘲讽“可惜云家统共一个破药炉两间露天屋，要是这养爹在机关大院住着，别说家中贡个病菩萨，便是养一窝大虫，你们看那个丫头，是走还是钉着！”\r\n　　这便是了,阿衡的亲阿公亲爹在B城，是住机关大院，跺一跺脚便能把他们这穷水小镇陷落几层皮骨的大官！\r\n　　自然，阿衡是听不到这些话的，当时，她咬紧牙根，死瞪着车窗，怕一张口便吐个翻江倒海，秽了这名贵的车！\r\n　　昏昏沉沉的，也不知过了多久，飞驰后退的景物不停从眼前划过，脑中一片空白，而后定格在逐渐清晰的霓虹灯上，眩晕起来，耳中鼓过猛烈的风声。\r\n　　而当所有的一切隐去声息，睁开眼的一瞬间，车门缓缓被拉开，微微弯曲的修长指节带着些微夏日阳光的气息，出现在她的眼前。\r\n　　阿衡承认，当时对那双手是有着难以言明的期许的，后来回想起来，她觉得自己兴许有些雏鸟情节。\r\n　　“欢迎你，云衡。”那双手的主人，是个十七八岁的少年，身材极是挺拔高挑，长着深深的酒窝，看着她，漾开俊俏清爽的笑容，右手打开车门，左手习惯礼貌地放在胸前，绅士一般可人的风度，微微贴近心脏的位置。\r\n　　“我是温思莞，爷爷让我接你回去。”\r\n　　思莞，思莞，温衡默念，轻轻抬起头，认真地看了看他的眼睛，而后，察觉到了什么，不着声色地移开眼睛，复又略微狼狈地低下头。\r\n　　思莞淡笑，当她害羞，也就不以为意。挥挥手，颇有礼貌地向爷爷的秘书告别，理所当然地接过了温衡手中的手提箱。\r\n　　阿衡看着提着手提箱的思莞，背影修长挺拔，与她不远不近，一臂之距 ，怔忡了片刻，微不可闻地大口呼入空气，却终究郁在胸中。\r\n　　云衡和云在，是姐弟，假的。\r\n　　思莞和阿衡，是兄妹，真的。\r\n　　可于阿衡而言，什么是假，什么又是真呢？\r\n　　穷乡僻壤的孩子，第一次走进都市，饶是本性稚拙，也总是存着几分出奇的敏锐的。她看得出思莞的芥蒂，那么清晰的排斥，全部藏在醇亮的眸中，令她尴尬得不得不选择忽视。\r\n　　随着思莞的步伐，她的眼睛慢慢在那座所谓的“机关大院”中游移。一座座独立的白色洋楼规整错落在平整宽阔的道路两旁，洁净干练的感觉，并不若她想象中的铺满金银，奢侈而易曝露出人们心中的欲望。\r\n　　恰逢夏日，树木繁茂，总有几座别墅绰约着隐在翠绿浓淡之间，当思莞走进石子小路，慢慢被大树遮住身影时，阿衡还在愣神，反应过来，已不见人影。\r\n　　她僵在原地，傻看分岔的石子路，不知左右\r\n　　还好这个孩子生性敦厚温和，并不急躁，心中清楚思莞看不到她自然会按原路返回，再不济，也总能遇到可以问路的人。\r\n　　温慕新，阿公的名字，秘书模样的中年人确凿告诉过她。\r\n　　黄昏时分，沿着树后漂亮的白色建筑，映在温衡的侧面上，有些烫人。\r\n　　下意识地，她抬起了面庞，本意是夕阳，沿着半是凉爽的树隙，却看到了一扇被阳光韶染成金色的窗。\r\n　　多年之后的冬日，阿衡坐在巴黎街头温暖的咖啡厅中，念着枯燥的医学原理，不经意抬头，看到蕴着哈气的窗外有些朦胧的人影，总是不自觉地用手指缓缓拭去白色的雾气，还原窗外真实的生动，笑得宠溺而释然，在法国细腻到极致的美丽中恍惚追寻到了时光的剪影，每每戏称这一刻追寻是“Secret Of My Boy”。\r\n　　而从开始到完结，言希那个傻瓜，一直都不明白，一切的一切只是属于她的秘密，饶是她早已把他从那般恣意毒舌美丽尖锐倔强脆弱的少年宠成这般风姿卓越高傲无敌流光溢彩的男人，萦绕舌尖轻轻默念，也不过一句——男孩，我的男孩。\r\n　　她的男孩，那一日，是躲在白色的窗纱后的，而她，看到的明明只有隐约的人的侧影，模糊的，眼睛却无法移开，宛若被蛊惑了一般，只能以仰视的姿势滞在原地，在树缝中以微妙而紧张的心情凝视着那扇窗。\r\n　　那抹剪影，右臂弯成优雅的弧线，纤长分明的指节下是有着细润弧线的弦，左肩上依偎着小提琴隐约的琴身，下颌是尖锐带着致命旖旎意味的线条，明明是混沌的影像，却因着阳光强大的力蛮横地撕碎了心中细微的暧昧，一瞬间，那一抹影再清晰不过，她几乎冒昧地窥视到了它的灵魂，伴着手臂在空气中划过的弧度，是真实的音符，耳中尚未承接，眼睛却已因为太过纯洁太具毁灭性的美丽而刺痛起来。\r\n　　耳中，本想是能听到琴声的，莫名地，却只剩下一片寂静，只剩下自己的呼吸声，缓缓地，好像被人溺在水中，消失了知觉再无力周旋的。\r\n　　“阿希，怎地又摧残人的耳朵，起调错了！”\r\n　　那一声大喊，叫醒了她的心魂，转身须臾，她看到了思莞的笑容，眼睛弯得除了温暖与虔诚竟再也容不下其他的东西，与看她的那番厌恶，是有着天壤之别的。\r\n　　再回眸，那人影已消失，仅余下空澄的窗。\r\n　　未及她反应，霎那，窗纱却拉开了一半，再眨眼，一盆水已经干脆利落地泼在思莞身上，精确无误，无一滴浪费。\r\n　　而后，人影白皙的手快速收回粉色的塑料盆，“砰”地一声，重重关紧窗，拉上窗帘，驱鬼一般，一气呵成。\r\n　　他以那样无可避免的强大姿态走到她的身边，十六岁那年，温衡逃不过命运的恩赐，终究遇上了言希。\r\n　　许久之后，Eve饶有兴味地问她——“阿衡，你丫老实招，是不是当时就看上了言大美人儿？”\r\n　　阿衡弯唇，语调温和，带着轻轻的糯意——“怎么可能？”\r\n　　当时吧，人小，傻得冒泡，没别的想法，就是觉得，首都的人民就是与众不同，连泼水的姿势都特别嚣张，特别大爷，特别……好看……\r\n\r\n　　chapter2\r\n\r\n　　Chapter2\r\n　　云衡想过见到至亲的一千种场景，不外是鼻酸，流泪，百感交集，如同原来家中母亲爱看的黄梅戏文一般，掏人肺腑，感人至深的；也兴许是尴尬，不习惯，彼此都是小心翼翼的，因着时间的距离而产生暂时无法消弭的生疏。\r\n　　每一种都想过，但都没有眼前的场景来得真实，而这种真实之所以称作真实，是因为它否决了所有的假设。\r\n　　“思莞，你是怎么回事？”老人锐利的眸子从温衡身上缓缓扫过，定格在满身水渍宛若落汤鸡一般的少年身上。\r\n　　“我和阿希刚才闹着玩儿，不小心……”思莞并不介怀，笑得随和。\r\n　　神态威严的老人微微颔首，随即目光转到温衡身上。\r\n　　阿衡心跳得很快，觉得时间停止在这一刻。老人凝视的眼神，让她无处躲藏。\r\n　　“你以前叫做什么？”\r\n　　“云衡。”阿衡自幼在南方长大，普通话虽学过，但说起来极是别扭拗口，因此一个字一个字说来，显得口舌笨拙。\r\n　　“按照思莞的辈分，你母亲当时有你时我给你取过一个名字，思尔，只是这个名字被人占了，你还是按原名吧，以后就叫温衡。”老人沉吟，看着眼前的孙女，半晌后开口。\r\n　　被人占了？阿衡有些迷惑，眼光不自觉小心翼翼地看向思莞，最终定格在他的手上，少年不着痕地握紧拳，淡淡青色的脉络，袖口的水滴沿着手背，一滴滴不断滑落。\r\n　　“张嫂，带温衡去休息。”老人叮嘱站在一旁的中年女人，而后看向思莞“去收拾干净，这么大人，不像话。”\r\n　　爱之深，责之切。\r\n　　阿衡随着张嫂踏上身侧的曲形木质楼梯时，这句话从脑海中闪过。\r\n　　正反对比，即使是小镇上的老师，也总是教过的。\r\n　　很小的时候，父亲告诉过她，亲情是不可以用加减计算的，有便是全然的不图回报的付出，没有则是零，并不存在中间斤斤计较的地带。\r\n　　“到了，就是这里。”张嫂走到二楼的拐角处，打开卧室的门，看着阿衡，脸色有些不自然。\r\n　　“谢……谢……您。”阿衡声音温和，带着吴音的糯糯的普通话腔调有些滑稽。\r\n　　张嫂深深地看了阿衡许久，最终叹了口气，转身离去。\r\n　　阿衡把手提箱拖进卧室，却一瞬间迷糊起来。\r\n　　满眼的暖蓝色，精致而温馨的设计，处处透露生活的气息，精致的蓝色贝壳风铃，软软的足以塞满四个她的大床，透露着温暖气息的被褥，这里，以前住过其他的人吗？\r\n　　阿衡有些局促，站在海蓝色的地毯上，打量着眼前的一切。\r\n　　与她格格不入的房间，恍若闯入了别人隐私的空间，阿衡不知所措，难为地放下手提箱，轻轻坐在玻璃圆桌旁的玻璃转椅上。\r\n　　方低头，却看到圆桌上东倒西歪着几个精致的稻草娃娃。有头发花白翘着胡子威严的爷爷，眉毛弯弯笑眯眯戴着十字挂坠的奶奶，很神气穿着海军服的叼着烟卷的爸爸，梳着漂亮发髻的温柔的妈妈，眉毛上挑的眼睛很大酒窝很深的男孩。这是……温家一家人吗？\r\n　　阿衡看着那些娃娃憨态可掬，紧张的心情竟奇异般地放松了，她伸出手，指尖小心翼翼地抚摸着它们的轮廓。\r\n　　“不要碰尔尔的东西！”阿衡被吓了一跳，手颤抖，瞬间，娃娃掉落在地毯上。\r\n　　她转身，木木地看着眼前突然出现的女子，鼻子竟奇怪地酸了起来。\r\n　　小的时候，她就知道自己和在在，母亲，父亲统统长得不像，常常有别人在背后指指点点，虽然心中会不舒服，但每次总是蹲在河边，呆到给在在煎药的时间便作罢。\r\n　　母亲是个家道中落的书香门第的闺秀，读过许多书，是镇上有名的女秀才。\r\n　　“阿妈，我怎么长得不像你？”她曾经问过母亲。\r\n　　“阿衡这样便好看。”母亲淡淡看着她笑“远山眉比柳叶眉贵气。”\r\n　　阿衡长着远山眉，眼睛清秀温柔，看起来有些明净山水的味道。而云母长着典型的柳眉，江南女子娇美的风情。\r\n　　眼前的女子，恰恰长着极是标致的远山眉。\r\n　　阿衡站起身，目不转睛地看着她走到自己的身旁，轻轻蹲下身，怜惜得捡起掉落的娃娃，而后站起身。\r\n　　她僵直着身体，眼睛一动不动地盯着女子。\r\n　　而女子却仿若没有看到她，带着温柔清蔼的风度，转身从她面前静静走过，静静离开。\r\n　　阿衡看着女子的背影，蓦地，一种连自己都不敢确认自己真实存在的自卑情绪缓缓从心底释放。\r\n　　她是谁呢？这个孩子当下是恨不得把自己揉碎在空气中，变成触及不到的尘埃的。\r\n　　无视，原来比抛弃更加残忍。\r\n　　妈妈，那么温柔柔软的词。阿衡的妈妈。\r\n　　妈妈，妈妈。\r\n　　阿衡抱着自己的行李箱，几乎感到羞辱一般地哭了出来。\r\n　　那日晚餐，不出阿衡所料，出席的只有一家之主的爷爷。他问过她许多问题，阿衡紧张得每每语无伦次，直至精神矍铄的老人皱起浓眉。\r\n　　“我和学校那边打好招呼了，你明天就和思莞一起去上学，有什么不懂的问他。”\r\n　　清晨，阿衡再次见到了接她到B市的秘书，只不过车换了一辆。\r\n　　思莞坐在副驾驶座上，阿衡坐在与思莞同侧的后方。\r\n　　阿衡从小到大，第一次来到北方，对一切自然是新奇的。过度熙攘的人群，带着浓重生活气息的俏皮京话，高耸整齐的楼层，四方精妙的四合院，同一座城市，不同的风情，却又如此奇妙地水□溶着。\r\n　　“思莞，前面堵车堵得厉害。”文质彬彬的李秘书扭脸对着思莞微笑，带着询问的语气。\r\n　　“这里离学校很近，我和温衡先下车吧，李叔叔？“思莞沉吟半晌，看着堵在路口已经接近二十分钟的长龙，有礼貌地笑答。\r\n　　阿衡背着书包，跟在思莞身后，不远不近，恰恰一臂之距。\r\n　　许久之后，若是没有言希在身旁，阿衡站在思莞身旁，也总是一臂之距，显得有些拘谨。思莞起先不注意，后来发现，一群朋友，唯有对他，才如此，绕是少年绅士风度，也不禁烦闷起来。\r\n　　“丫头，我是哥哥，哥哥呀！”思莞如是把手轻轻搁在阿衡的头顶半开玩笑。\r\n　　“我知道呀。”阿衡如是温和坦诚作答。\r\n　　正是因为是哥哥，才清楚地记得他不喜欢她靠近他的。\r\n　　这样谨小慎微的珍惜，思莞是不会明白的，正如他不明白自己为什么会为了思尔一而再地放弃阿衡。\r\n　　思莞选了小路，穿过一条弯弯窄窄的弄堂，阿衡低头，默默地记路，直至走向街角的十字出口，直至望见满眼忙碌的人群。\r\n　　命运之所以强大，在于它可以站在终点看你为它沿途设下的偶遇惊艳，而那些偶遇，虽然每每令你在心中盛赞它的无可取代，但回首看来，却又是那样自然而理所当然的存在，好像拼图上细微得近乎忽略的一块，终究存在了才是完整。\r\n　　阿衡第二次看到言希时，她的男孩正坐在街角，混在一群老人中间，专心致志地低头啜着粗瓷碗盛着的乳白色豆汁，修长白皙的指扶着碗的边沿，在阳光下闪着淡淡紫色的黑发柔软地沿着额角自然垂落，恰恰遮住了侧颜，只露出高耸秀气的鼻梁，明明清楚得可以看到每一根微微上翘的细发，深蓝校服外套第一颗纽扣旁的乱线，他的面容却完全是一片空白。\r\n　　当时，七点五十八分。\r\n　　“阿希，快迟了，你快一点！”思莞习惯了一般，拍了拍他的肩，长腿不停步地向前跨去。\r\n　　阿衡不眨眼地默默看着那个少年，看着他懒散地对着思莞的方向扬了扬纤细的指，却始终未抬起头。\r\n　　阿希。\r\n　　好像女孩子的名字。\r\n　　看着少年发丝上不小心扫到的豆渍，阿衡淡淡微笑，轻轻从口袋中取出一方白色手帕，默默放在了积了一层陈垢的木桌上，而后，离去。\r\n　　阿衡在以前的家中时，宠惯了在在，明明只大了两岁，却颇有了些“长姐如母”的意味，总是把饭和药一口口喂到在在口中，耐心打理完，自己才肯吃饭。\r\n　　后来，Eve看着阿衡把言希宠成无法无天，拿着手榴弹就敢炸飞机的嚣张德性，撞死的心日益膨胀。\r\n　　“言希，你丫就可劲儿闹腾吧，早晚主把你小丫的收回去！”\r\n　　言希狠狠地踹了Eve一脚，然后用星星眼可怜巴巴地看着阿衡。\r\n　　“他敢。”阿衡淡淡看了天空一眼，温和开口。\r\n　　“你说你一小丫头，年纪屁点儿，母性荷尔蒙怎么这么旺盛？”Eve从地上爬起来捶胸顿足，几欲吐血。\r\n　　“习惯了。”阿衡微笑，拂去言希肩头的雪花，淡淡开口。\r\n　　“这么说，言希不是第一个你这么纵容的主儿？”Eve瞟了言希一眼，一扫郁闷，笑得不怀好意，露出白晃晃的牙，\r\n　　“不是。”阿衡嗓音温和，糯糯的，全无B市人语调的尖锐。\r\n　　于是，言希开始纠结，八爪章鱼一般地挂在阿衡身上撒娇，不停地问“阿衡怎么可以对别人像对我一样好，我为什么不是第一个？”\r\n　　阿衡闭了嘴，终究是不肯再开口的。\r\n　　为什么呢，为什么不是第一个，却是最后一个……\r\n', '2015-02-27 07:24:37');

-- --------------------------------------------------------

--
-- 表的结构 `blog_user`
--

CREATE TABLE IF NOT EXISTS `blog_user` (
`user_id` int(5) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_name` varchar(225) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=665627 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `blog_user`
--

INSERT INTO `blog_user` (`user_id`, `password`, `user_name`, `time`, `content`) VALUES
(665618, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', '李泽月', '2015-02-22 11:56:07', ''),
(665619, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', 'zeyue', '2015-02-22 12:05:48', ''),
(665620, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', 'lala', '2015-02-22 14:17:32', ''),
(665621, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', '呵呵呵', '2015-02-22 14:27:10', ''),
(665622, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', 'skila', '2015-02-23 04:45:18', ''),
(665623, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', 'piano', '2015-02-23 04:48:00', ''),
(665624, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', '唐人', '2015-02-24 08:55:58', ''),
(665625, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', 'zz', '2015-02-26 13:38:57', ''),
(665626, '1fd7aee6c9dd2f1dc572a1fdbc7d84e3', 'zy', '2015-02-27 06:28:06', '');

-- --------------------------------------------------------

--
-- 表的结构 `discuss`
--

CREATE TABLE IF NOT EXISTS `discuss` (
`discuss_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `friend_name` varchar(10) NOT NULL,
  `content_id` int(11) NOT NULL,
  `discuss` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `friend_name` varchar(5) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `reply`
--

CREATE TABLE IF NOT EXISTS `reply` (
  `discuss_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(55) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `friend_name` varchar(55) NOT NULL,
  `reply` varchar(552) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
`reply_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_content`
--
ALTER TABLE `blog_content`
 ADD UNIQUE KEY `content_id` (`content_id`), ADD KEY `type` (`type`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `blog_user`
--
ALTER TABLE `blog_user`
 ADD PRIMARY KEY (`user_id`), ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `discuss`
--
ALTER TABLE `discuss`
 ADD PRIMARY KEY (`discuss_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
 ADD PRIMARY KEY (`reply_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_content`
--
ALTER TABLE `blog_content`
MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blog_user`
--
ALTER TABLE `blog_user`
MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=665627;
--
-- AUTO_INCREMENT for table `discuss`
--
ALTER TABLE `discuss`
MODIFY `discuss_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
