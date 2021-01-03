<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<%@ include file="bootstrap.jsp"%>

<%@ include file="css.jsp"%>

<title>大象基金_帮助中心</title>
</head>
<body>

	<%@ include file="nav.jsp"%>

	<div class="container">
		<div class="row mt-3">
			<div class="col-sm-3">
				<div class="list-group" id="list-tab" role="tablist">
					<a class="list-group-item list-group-item-action active"
						id="list-home-list" data-toggle="list" href="#list-home"
						role="tab" aria-controls="home">基金基础知识</a>
					<a class="list-group-item list-group-item-action"
						id="list-profile-list" data-toggle="list" href="#list-profile"
						role="tab" aria-controls="profile">基金类型</a> 
					<a class="list-group-item list-group-item-action"
						id="list-messages-list" data-toggle="list" href="#list-messages"
						role="tab" aria-controls="messages">基金投资风险</a> 
					<a class="list-group-item list-group-item-action"
						id="list-settings-list" data-toggle="list" href="#list-settings"
						role="tab" aria-controls="settings">基金名词解释</a> 
					<a class="list-group-item list-group-item-action" id="list-kh-list"
						data-toggle="list" href="#list-kh" role="tab" aria-controls="kh">开户相关</a>
				</div>
			</div>

			<div class="col-sm">
				<div class="tab-content" id="nav-tabContent">
					<!-- 基金基础知识 -->
					<div class="tab-pane fade show active" id="list-home"
						role="tabpanel" aria-labelledby="list-home-list">

						<div class="card">
							<div class="card-body">
								<h5 class="card-title">基金基础知识</h5>
								<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
								<p class="card-text">证券投资基金是指通过发售基金份额，将众多投资者的资金集中起来，形成独立资产，由基金托管人托管，基金管理人管理，以投资组合的方法进行证券投资的一种利益共享、风险共担的集合投资方式。</p>
								<div class="accordion" id="accordionJJJC">
									<div class="card">
										<div class="card-header" id="headingOne">
											<h5 class="mb-0">
												<button class="btn btn-link" type="button"
													data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">
													基金参与者</button>
											</h5>
										</div>
										<div id="collapseOne" class="collapse show"
											aria-labelledby="headingOne" data-parent="#accordionJJJC">
											<div class="card-body">
												<p>投资者：自然人、机构。</p>
												<p>基金管理人：负责基金发起于经营管理的专业性机构，由基金管理公司担任。</p>
												<p>基金托管人：依据基金运行中“管理与保管分开”的原则对基金管理人进行监督和保管基金资产的机构。通常由有实力的商业银行和/或信托投资公司担任。</p>
												<p>基金注册登记机构：负责投资者账户的管理和服务、负责基金单位的注册登记以及红利发放等具体投资者服务内容的专门机构。如中国证券登记结算公司。</p>
												<p>基金代销机构：接受基金管理公司委托，代理开放式基金认购、申购和赎回业务的机构。基金代销机构可以是商业银行、证券公司、第三方基金销售公司。</p>
												<p>监管机构：中国证监会。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingTwo">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseTwo"
													aria-expanded="false" aria-controls="collapseTwo">
													基金与股票的区别</button>
											</h5>
										</div>
										<div id="collapseTwo" class="collapse"
											aria-labelledby="headingTwo" data-parent="#accordionJJJC">
											<div class="card-body">
												<p>证券投资基金是一种投资受益凭证。股票是股份有限公司在筹集资本时向出资人发行的股份凭证。</p>
												<p>1)反映的关系不同。股票反映的是所有权关系，而证券投资基金反映的是信托关系。</p>
												<p>2)在操作上投向不同。股票是融资工具，其集资主要投向实业，是一种直接投资方式。而证券投资基金是信托工具，其集资主要投向有价证券，是一种间接投资方式。</p>
												<p>3)风险与收益状况不同。股票的收益是不确定的，其收益取决于发行公司的经营效益，投资股票有较大风险。证券投资基金采取组合投资，能够在一定程度上分散风险，风险小于股票，收益也较股票稳定。</p>
												<p>4)投资回收方式不同。股票没有到期日，股票投资者不能要求退股，投资者如果想变现的话，只能在二级市场出售。开放式基金的投资者可以按资产净值赎回基金单位，封闭式基金的投资者在基金存续期内不得赎回基金单位，如果想变现，只能在交易所或者柜台市场上出售，但存续期满投资者可以得到投资本金的退让。
												</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingThree">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseThree"
													aria-expanded="false" aria-controls="collapseThree">
													基金与债券的区别</button>
											</h5>
										</div>
										<div id="collapseThree" class="collapse"
											aria-labelledby="headingThree" data-parent="#accordionJJJC">
											<div class="card-body">
												<p>债券是政府、金融机构、工商企业等机构直接向社会借债筹措资金时，向投资者发行，并且承诺按一定利率支付利息并按约定条件偿还本金的债权债务凭证。</p>
												<p>1)反映的关系不同。债券反映的是债权债务关系，证券投资基金反映的是信托关系。</p>
												<p>2)在操作上投向不同。债券是融资工具，其集资主要投向实业，是一种直接投资方式。而证券投资基金是信托工具，其集资主要投向有价证券，是一种间接投资方式。</p>
												<p>3)风险、收益不同。债券的收益一般是事先确定的，其投资风险较小。证券投资基金的投资风险高于债券，收益也高于债券。证券投资基金的风险、收益状况比债券高，比股票小。</p>
											</div>
										</div>
									</div>
								</div>
								<a href="#" class="card-link">Card link</a> <a href="#"
									class="card-link">Another link</a>
							</div>
						</div>
					</div>

					<!-- 基金类型 -->
					<div class="tab-pane fade" id="list-profile" role="tabpanel"
						aria-labelledby="list-profile-list">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">基金类型</h5>
								<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
								<p class="card-text">…………</p>
								<p>根据不同标准，可以将证券投资基金划分为不同的种类：</p>
								<p>1)根据基金单位是否可增加或赎回，可分为开放式基金和封闭式基金。</p>
								<p>普通开放式基金一般不上市交易，可通过第三方销售机构、银行、券商等申购和赎回，基金份额规模不固定；封闭式基金有固定的存续期，存续期内基金份额规模固定，再通过证券交易场所上市交易，投资者可通过二级市场买卖。</p>
								<p>2)根据组织形态的不同，可分为公司型基金和契约型基金。</p>
								<p>基金通过发行基金股份成立投资基金公司的形式设立，通常称为公司型基金；由基金管理人、基金托管人和投资人三方通过基金契约设立，通常称为契约型基金。目前我国的证券投资基金均为契约型基金。</p>
								<p>3)根据投资对象的不同，可分为股票型基金、混合型基金、债券型基金、货币市场基金等。</p>
								<p>股票基金：80%以上的基金资产投资于股票的；债券基金：80%以上的基金资产投资于债券的；货币市场基金：仅投资于货币市场工具的，为货币市场基金；混合基金：投资于股票、债券和货币市场工具，并且股票投资和债券投资的比例不符合债券、股票基金规定的，为混合基金。</p>
								<p>从投资风险角度看，几种基金给投资人带来的风险是不同的。其中股票基金风险最高，货币市场基金风险最小，债券基金的风险居中。</p>
								<p>4)相同品种的投资基金由于投资风格和策略不同，风险也会有所区别。按风险程度又可分为：成长型、价值型、平衡型</p>
								<p>成长型——成长型基金是指以追求资本增值为基本目标，较少考虑当期收入的基金，主要以具有良好增长潜力的股票为投资对象。</p>
								<p>价值型——价值型基金是指以追求稳定的经常性收入为基本目标的基金，主要以大盘蓝筹股、公司债、政府债券等稳定收益证券为投资对象。</p>
								<p>平衡型——平衡型基金则是既注重资本增值又注重当期收入的一类基金。一般而言，成长型基金的风险大、收益高；收入型基金的风险小、收益也较低；平衡型基金的风险、收益则介于成长型基金与收入型基金之间。</p>
								<a href="#" class="card-link">Card link</a> <a href="#"
									class="card-link">Another link</a>
							</div>
						</div>
					</div>

					<!-- 基金投资风险 -->
					<div class="tab-pane fade" id="list-messages" role="tabpanel"
						aria-labelledby="list-messages-list">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">基金投资风险</h5>
								<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
								<p class="card-text">证券投资基金是指通过发售基金份额，将众多投资者的资金集中起来，形成独立资产，由基金托管人托管，基金管理人管理，以投资组合的方法进行证券投资的一种利益共享、风险共担的集合投资方式。</p>
								<div class="accordion" id="accordionExample">
									<div class="card">
										<div class="card-header" id="headingOne">
											<h5 class="mb-0">
												<button class="btn btn-link" type="button"
													data-toggle="collapse" data-target="#collapseOne"
													aria-expanded="true" aria-controls="collapseOne">基金的选择</button>
											</h5>
										</div>
										<div id="collapseOne" class="collapse show"
											aria-labelledby="headingOne" data-parent="#accordionExample">
											<div class="card-body">
												<p>在做基金选择时，投资人必须注意以下几个问题：</p>
												<p class="strongtext">一、短线炒作还是长期投资？</p>
												<p>根据统计，全球股市大约有70%的时间都是在多头走势中，可见长期投资股票的获利是可以肯定的。但是，在这70%的多头走势当中，有四分之三的时间都是呈现窄幅整理，真正的巨幅涨势只停留在短时间内，时间波动难以掌握，短线炒作基金的结果，一方面徒增交易成本，另一方面也可能因此错失波段的涨升行情。有鉴于此，投资人应该避免短线炒作基金，抱持长期投资的正确观念，只要选择的基金操作绩效稳健良好，长期下来自然可以发挥时间的复利效果。因此，投资人也不宜买周转率过高的基金。因为基金周转率指的是基金在一定时间之内，买进或卖出股票的频率。周转率过高，一是表示基金经理人倾向短线炒作，另一则反映基金买进卖出的交易成本较高，会侵蚀基金的获利，投资者不可不慎。</p>
												<p class="strongtext">二、股票基金还是债券基金？</p>
												<p>在投资组合当中，应该适度纳入固定收益的投资工具，比如定存或债券等，来分散股票市场的波动风险。倘若投资者将所有资金都放在股票型基金而缺乏风险意识，一旦市场转多为空，将因此蒙受资产大幅缩水的危险。一般来说，如果您年纪尚轻，由于距离退休还有很长的一段时间，就算短期投资产生亏损也还有机会再赚回来，也就是承担风险的能力较高，因此可以将投资组合当中的较高比重放在股票基金上面。但若您年近半百，由于已逐渐届临退休时间，因此不宜承受过高的投资风险，股票基金的比重则宜调低。</p>
												<p class="strongtext">三、一家基金还是多家基金？</p>
												<p>虽然投资理财专家经常提醒投资者：“不要把鸡蛋放在同一个篮子里”，但是如果持有太多篮子，特别是这里的篮子本身已经是许多篮子的组合，管理起来也就相当不易了。在此建议投资人不要同时拥有超过六只以上的基金，因为，投资组合当中若有太多只基金容易造成重复投资的现象，非但无法进一步分散风险，反而增加管理上的困扰，还有进出场时点的问题。</p>
												<p class="strongtext">四、如何评价基金绩效？</p>
												<p>首先，不只以净值高低涨跌评断基金。许多投资者买了一只基金之后，就每天关心基金价值与净值有没有增长，如果净值没有动，就会心急地卖掉这只基金，而转进其它的基金。其实，净值下跌除了市场走低的因素之外，也有可能是因为配息之故，配息过后，净值自然会下跌，但这是代表资金已经分配给投资人，并非是基金操作绩效不佳。其次，不只以绝对投资报酬率来断定基金。一个好的基金应该是要当市场空头来临时，能发挥抗跌的绩效，跌幅小于大盘；而当多头来临时，涨幅高于大盘。因此，在评断基金绩效时，不应该只以绝对的投资报酬来论断，而应该同时考量相应大盘指数的表现，才能客观地评断该只基金的绩效表现是否稳健良好。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingTwo">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseTwo"
													aria-expanded="false" aria-controls="collapseTwo">
													风险承担能力</button>
											</h5>
										</div>
										<div id="collapseTwo" class="collapse"
											aria-labelledby="headingTwo" data-parent="#accordionExample">
											<div class="card-body">
												<p>在投资市场里，是没有所谓的免费午餐的。富贵险中求，回报率越高，风险就愈大，风险与回报率永远成正比。投资者在确定自己能够承受风险能力的时候，需要考虑如下因素：</p>
												<p>一是年龄和赚钱能力。年轻人来日方长，拥有持续的赚钱能力，较能承受风险，可选择风险性较大的基金；</p>
												<p>二是个人财产状况及家庭的负担。通常持有较多现金的投资者可承受较大的风险；有固定收入者，风险承担能力亦较事无定业的人为高；</p>
												<p>三是投资收益的目标及年限。步入生儿育女的婚龄青年，较多的是考虑在短期内买楼结婚，又或要供养子女上学和养育父母，承担风险的能力亦有限。年长者期望靠投资的收益作养老金之用，则只考虑把低风险的基金作为投资对象。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingThree">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseThree"
													aria-expanded="false" aria-controls="collapseThree">
													投资主要风险</button>
											</h5>
										</div>
										<div id="collapseThree" class="collapse"
											aria-labelledby="headingThree"
											data-parent="#accordionExample">
											<div class="card-body">
												<p>1)流动性风险：基金面临巨额赎回或暂停赎回的极端情况时，基金投资人有可能不能以当日单位基金资产净值全额赎回。如投资人选择延迟赎回，则要承担后续赎回日单位基金资产净值下跌的风险。</p>
												<p>2)申购、赎回价格未知的风险：投资人在当日进行基金买卖时，所参考的单位基金资产净值是上一个基金交易日的数据，而当日基金净值和买卖价格尚无法确定。因此投资者要承担一定的未知风险。</p>
												<p>3)基金投资风险：和封闭式基金一样，开放式基金也面临由于证券市场价格波动引起的投资风险。</p>
												<p>4)机构运作风险：主要包括系统运作风险、管理风险、经营风险等。</p>
												<p>5)不可抗力风险：指战争、自然灾害等不可抗力发生时给基金投资人带来的风险。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingFour">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseFour"
													aria-expanded="false" aria-controls="collapseFour">
													开放式基金收益来源</button>
											</h5>
										</div>
										<div id="collapseFour" class="collapse"
											aria-labelledby="headingFour" data-parent="#accordionExample">
											<div class="card-body">
												<p>1)利息收入：指投资国债、金融债、企业债或银行存款产生的利息给付；</p>
												<p>2)资本利得：指买卖股票或债券获得的差价收入；</p>
												<p>3)其他收入：指运用基金资产带来的成本或费用节约计入的收入。</p>
												<p>这些收益均包含在基金单位资产净值中，到一定时候会按照基金契约以分红形式分配给投资者。</p>

											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingFive">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseFive"
													aria-expanded="false" aria-controls="collapseFive">
													个人投资开放式基金收益来源</button>
											</h5>
										</div>
										<div id="collapseFive" class="collapse"
											aria-labelledby="headingFive" data-parent="#accordionExample">
											<div class="card-body">
												<p>基金买卖价差：随着证券市场的起伏波动，基金单位净值将不断发生变化，因而基金申购、赎回的价格也会不断涨跌。如果投资人能够把握市场机会，在有利的时机进行开放式基金的交易，就能实现高抛低吸的价差收益。</p>
												<p>基金红利：</p>
												<p>1)现金红利：即向投资者分配现金。</p>
												<p>2)红利再投资：是将投资人分得的收益再投资于基金，并折算成相应数量的基金单位。</p>
											</div>
										</div>
									</div>

								</div>
								<a href="#" class="card-link">Card link</a> <a href="#"
									class="card-link">Another link</a>
							</div>
						</div>
					</div>

					<!-- 基金名词解释 -->
					<div class="tab-pane fade" id="list-settings" role="tabpanel"
						aria-labelledby="list-settings-list">
						<div class="accordion" id="accordionJJMCJS">
							<div class="card">
								<div class="card-header" id="heading1">
									<h5 class="mb-0">
										<button class="btn btn-link" type="button"
											data-toggle="collapse" data-target="#collapse1"
											aria-expanded="true" aria-controls="collapse1">基金净值</button>
									</h5>
								</div>
								<div id="collapse1" class="collapse show"
									aria-labelledby="heading1" data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>基金净值，是指每个营业日根据基金所投资证券市场收盘价所计算出的基金总资产价值，扣除基金当日之各类成本及费用后，所得到的就是该基金当日之资产净值。除以基金当日所发生在外的单位总数，就是每单位基金净值。</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading2">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse2"
											aria-expanded="false" aria-controls="collapse2">
											累计净值</button>
									</h5>
								</div>
								<div id="collapse2" class="collapse" aria-labelledby="heading2"
									data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>基金累计净值为单位净值与基金成立以来累计分红派息之和，它属于一个参照值。</p>
										<p>举例说明，2002年7月2日某基金单位净值是1.0486元，2004年4月份派发的现金红利时每份基金单位0.025元，则累计净值=1.0486+0.025=1.0736元。</p>
										<p>补充：拆分后基金累计净值的计算</p>
										<p>T日基金份额累计净值=（T日基金份额净值+拆分后份额分红金额）×拆分比例+拆分前份额分红金额。</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading3">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse3"
											aria-expanded="false" aria-controls="collapse3">
											万份收益</button>
									</h5>
								</div>
								<div id="collapse3" class="collapse" aria-labelledby="heading3"
									data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>万份收益：货币基金万份收益是指持有1万份的货币基金能获得多少收益，一般每个工作日晚上公布当天的万份收益，如果是遇到周六日或者节假日，一般货币基金万份收益在节假日后2个工作日公布，一般周六日的收益会合并公布。</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading4">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse4"
											aria-expanded="false" aria-controls="collapse4">
											七日年化收益率</button>
									</h5>
								</div>
								<div id="collapse4" class="collapse" aria-labelledby="heading4"
									data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>七日年化收益率是指用最近七天(自然日)货币基金的每万份收益的平均收益折算出来的年收益率，并不是货币基金七天的收益。</p>
										<p>七日年化收益率的计算公式为：{(7日总收益/7)*365/10000}*100%</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading5">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse5"
											aria-expanded="false" aria-controls="collapse5">
											基金的开放日</button>
									</h5>
								</div>
								<div id="collapse5" class="collapse" aria-labelledby="heading5"
									data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>所谓开放日指基金契约规定的投资者可以在销售网点办理基金申购、赎回交易业务日期。</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading6">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse6"
											aria-expanded="false" aria-controls="collapse6">T日</button>
									</h5>
								</div>
								<div id="collapse6" class="collapse" aria-labelledby="heading6"
									data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>T日是指开放式基金销售机构在规定时间受理投资者申购、转换、赎回或其它业务申请的工作日。</p>
										<p>T日以股市收市时间为界，每天15:00之前提交的交易按照当天收市后公布的净值成交，15:00之后提交的交易将按照下一个交易日的净值成交。</p>
										<p>比如周一15:00前提交的交易，以T日(周一)的净值成交，T+1(星期二)确认交易。需特别注意的是：周末或节假日前最后一个工作日15:00后到节后第一个工作日15:00前为同一个工作日。</p>
										<p>比如星期五15:00之后提交的交易将视为下星期一的交易，T日为下星期一，以T日的净值成交，T+1(下星期二)确认交易。</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading7">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse7"
											aria-expanded="false" aria-controls="collapse7">
											基金认购</button>
									</h5>
								</div>
								<div id="collapse7" class="collapse" aria-labelledby="heading7"
									data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>若在开放式基金的发行期内购买，称为认购。</p>
										<p>投资者在份额发售期内已经正式受理的认购申请不得撤销。对于在当日基金业务办理时间内提交的认购申请，投资者可以在当日15:00前提交撤销申请，予以撤销；15:00后则无法撤销申请。</p>
										<p>认购资金在募集期间发生的利息收入按银行活期存款利率（税后）计算。该利息收入在认购期结束时在代扣利息税后，折合成基金份额，归投资人所有。利息转份额以基金注册登记机构的记录为准。我司基金在认购期间产生的利息是计算到募集期最后一天的，募集期结束后的第一天开始到正式公告基金合同生效，这段时间不再计算利息。</p>
										<p>场内认购单笔最低认购份额为1000份，超过1000份的须为1000份的整数倍，且每笔认购最大不超过99,999,000份基金份额。LOF基金募集期间对单个基金份额持有人最高累计认购份额不设限制。</p>
										<p>场内按份额认购，认购款项在募集期间产生的利息将折算为基金份额归基金份额持有人所有，其中利息转份额以基金注册登记机构的记录为准。利息折算的份额保留至整数位（最小单位为1份），余额计入基金财产。</p>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-header" id="heading8">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse8"
											aria-expanded="false" aria-controls="collapse8">
											基金申购</button>
									</h5>
								</div>
								<div id="collapse8" class="collapse" aria-labelledby="heading8"
									data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>基金封闭期结束后，您若申请购买开放式基金，习惯上称为基金申购，以区分在发行期内的认购。一般基金申购是T+1个工作日确认，T+2个工作日可以查询确认结果。</p>
										<p>认购申购费及份额计算</p>
										<p class="strongtext">1)开放式基金的前端申购费用及份额计算方法如下：</p>
										<p>净申购金额 = 申购金额/（1 + 申购费率）</p>
										<p>申购费用 = 申购金额 - 净申购金额</p>
										<p>申购份额 = 净申购金额 / T日基金份额净值</p>
										<p>假如投资者投资50,000元认购某开放式基金，假设申购费率为1％，当日的基金单位净值为1.1688元，其得到的份额为：



										
										<p>
										<p>净申购金额=50,000/(1+1%)=49504.95元</p>
										<p>申购费用=50000-49504.95=495.05元</p>
										<p>申购份额=49504.95/1.1688=42355.36份</p>
										<p>认购资金在募集期间发生的利息收入按银行活期存款利率（税后）计算。该利息收入在认购期结束时在代扣利息税后，折合成基金份额，归投资人所有。利息转份额以基金注册登记机构的记录为准。我司基金在认购期间产生的利息是计算到募集期最后一天的，募集期结束后的第一天开始到正式公告基金合同生效，这段时间不再计算利息。</p>
										<p>场内认购单笔最低认购份额为1000份，超过1000份的须为1000份的整数倍，且每笔认购最大不超过99,999,000份基金份额。LOF基金募集期间对单个基金份额持有人最高累计认购份额不设限制。</p>
										<p>场内按份额认购，认购款项在募集期间产生的利息将折算为基金份额归基金份额持有人所有，其中利息转份额以基金注册登记机构的记录为准。利息折算的份额保留至整数位（最小单位为1份），余额计入基金财产。</p>
										<p class="strongtext">2)后端申购费的计算公式</p>
										<p>后端申购费=申购金额×对应费率</p>
										<p>（部分赎回时，后端申购费=赎回份额×申购当天净值×对应费率）</p>
										<p class="strongtext">3)拆分后的基金后端申购费的计算</p>
										<p>拆分后的基金后端申购费=赎回的份额÷拆分比例×申购日基金份额净值×对应的后端申购费率</p>
										<p class="strongtext">4)红利转投份额的申购赎回费计算：不论是前段收费还是后端收费模式下，红利再投资份额没有申购费。</p>
									</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="heading9">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse9"
											aria-expanded="false" aria-controls="collapse9">
											封闭建仓期</button>
									</h5>
								</div>
								<div id="collapse9" class="collapse" aria-labelledby="heading9"
									data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>基金成功募集足够资金宣告成立后，会有一段不接受投资者赎回基金单位申请的时间段，称之为基金的封闭期。封闭期是为了让基金经理将募集来的资金根据证券市场状况完成初步的投资安排。根据《开放式证券投资基金暂行办法》规定，基金封闭期不得超过3个月。</p>
									</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="heading10">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse10"
											aria-expanded="false" aria-controls="collapse10">
											基金赎回</button>
									</h5>
								</div>
								<div id="collapse10" class="collapse"
									aria-labelledby="heading10" data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>若您申请将手中持有的基金单位按公布的价格卖出并收回现金，习惯上称之为基金赎回。</p>
										<p>一般基金赎回是T+1个工作日确认,T+2个工作日可以查询确认结果。</p>
										<p>赎回到账时间，一般货币基金为T+2~T+7个工作日，其他基金产品一般为T+4~T+7个工作日。</p>
										<p>赎回费率随赎回基金份额持有年限的增加而递减，直至为零。</p>
										<p>注：在货币基金结转日提交的赎回申请，未分配收益结转的份额有可能因为未被确认入账而导致此部分份额需单独赎回。</p>
										<p class="strongtext">赎回费计算</p>
										<p>1）开放式基金的赎回费用及金额计算方法如下：</p>
										<p>赎回费用=赎回份额×T日基金单位净值×赎回费率</p>
										<p>赎回金额=赎回份额×T日基金单位净值-赎回费用</p>
										<p>假如投资者赎回50,000份基金单位，假设赎回费率为0.5％，当日的基金单位资产净值为1.1688元，其得到的赎回金额为：</p>
										<p>赎回费用=50,000×1.1688×0.5％=292.20元</p>
										<p>赎回金额=50,000×1.1688-292.2=58,147.80元</p>
										<p>2）红利转投份额的赎回费计算：不论是前段收费还是后端收费模式下，红利再投资份额一般持有超过两年赎回费为0。</p>
										<p class="strong">巨额赎回</p>
										<p>如果在某个基金开放日，基金净赎回申请（指赎回申请与申购申请总数之差）超过上一日基金总份数的10%，即认为发生了巨额赎回。巨额赎回意味着基金管理人必须卖出大量证券以变现，而大量卖出证券便可能牺牲收益，所以在处理巨额赎回时，基金管理人可以视情况选择正常赎回或者部分延期赎回。而投资人可以选择继续赎回或者放弃超额部分。</p>
										<p>出现延期赎回现象时，投资人选择继续赎回，即在下一个交易日自动提交延期赎回份额的赎回申请，而放弃超额部分，即下一个交易日系统不会继续提交延期赎回份额的赎回申请，投资者可以根据需要选择是否再次赎回。</p>
										<p>在处理巨额赎回时，基金管理人可以视情况选择：</p>
										<p>正常赎回若认定完全有能力应付，则可按正常赎回程序执行，投资人利益不受影响。
										<p>部分顺延赎回若基金经理认为在一天内大量卖出证券比较困难或者对基金十分不利时，在当日接受赎回比例不低于基金总份额的10%的前提下，可以对其余赎回申请延期办理。对于当日的赎回申请，基金管理人会按单个帐户赎回申请量占赎回申请总量的比例，确定当日收力的赎回份额；未受理部分会延迟至下一个开放日办理，并以该开放日当日的基金资产净值为依据计算赎回金额，但投资者可在申请赎回时选择当日未获受理部分予以撤销。</p>
										<p>发生巨额赎回并延期支付时，基金管理人应当通过邮寄、传真或者招募说明书会订的其他方式、在招募说明书规定的时间内通知基金投资人，说明有关处理方法，同时在指定媒体及其他相关媒体上公告；通知和公告的时间最长不超过三个证券交易所交易日。</p>
									</div>
								</div>
							</div>

							<div class="card">
								<div class="card-header" id="heading11">
									<h5 class="mb-0">
										<button class="btn btn-link collapsed" type="button"
											data-toggle="collapse" data-target="#collapse11"
											aria-expanded="false" aria-controls="collapse11">
											基金分红</button>
									</h5>
								</div>
								<div id="collapse11" class="collapse"
									aria-labelledby="heading11" data-parent="#accordionJJMCJS">
									<div class="card-body">
										<p>基金分红是指基金将收益的一部分以现金或折算成基金份额的形式派发给投资人，这部分收益原来就是基金份额净值的一部分。</p>
										<p>开放式基金的默认分红方式为现金红利(除货币基金只有红利转投和场内交易的LOF基金只有现金分红)，投资人可以在购买时自行设定或在确认份额后将其修改为“红利再投资”。</p>
										<p>按照《证券投资基金运作管理办法》的规定，封闭式基金的收益分配，每年不得少于一次，封闭式基金年度收益分配比例不得低于基金年度已实现收益的百分之九十；开放式基金的基金合同应当约定每年基金收益分配的最多次数和基金收益分配的最低比例。</p>
										<p>在权益登记日(R)之前申购能参与本次分红，在权益登记日当日申购不参与本次分红。在权益登记日之前赎回不能参与本次分红，在权益登记日当日赎回能参与本次分红。</p>
										<p>R+2个工作日即红利发放日可查询份额或对这些份额进行赎回操作。红利再投份额持有时间从R+1日开始计算持有时间。</p>
										<p>现金红利到账时间一般为R+2~R+7个工作日。</p>
										<p>基金分红的现金红利及分红所得份额计算</p>
										<p>1）若分红方式为现金分红：现金红利=持有的基金份额×分红比例。</p>
										<p>2）若分红方式为红利再投资：红利再投资份额=(持有的基金份额×现金分红比例)÷权益登记日基金份额净值。</p>
										<p>举个例子，广发强债基金第一次分红，每10份分红0.3元，权益登记日当天的基金份额净值为1.075元。假如客户持有10000份广发强债基金，那么该客户：</p>
										<p>现金红利=10000份×0.03 =300元</p>
										<p>红利再投资份额=（10000份×0.03）÷ 1.075元=279.07份。</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- 开户相关 -->
					<div class="tab-pane fade" id="list-kh" role="tabpanel"
						aria-labelledby="list-kh-list">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">平台优势</h5>
								<div class="accordion" id="accordionExamplea">
									<div class="card">
										<div class="card-header" id="headinga">
											<h5 class="mb-0">
												<button class="btn btn-link" type="button"
													data-toggle="collapse" data-target="#collapsea"
													aria-expanded="true" aria-controls="collapsea">大象基金和其他基金平台的区别在哪里？</button>
											</h5>
										</div>
										<div id="collapsea" class="collapse show"
											aria-labelledby="headinga" data-parent="#accordionExamplea">
											<div class="card-body">
												<p>1)费率优惠：提供前端申购费率优惠，申购费率全面1折(个别基金除外)；</p>
												<p>2)产品更全：相对于基金公司，我们致力于打造基金超市，产品相对来说是比较全面；</p>
												<p>3)资金安全：天天基金是上市公司东方财富全资子公司，交易资金受民生银行全程监管，交易安全有保障；</p>
												<p>4)快捷交易：7*24小时，不受营业时间的限制，网络手机均支持交易。</p>
												<p>5)专业投研：业内多年基金、股票、金融工程等投资研究专业人士组成，秉承“专业、客观、公正”精神，坚持完全独立、客观研究分析；</p>
												<p>6)贴心服务：以客为尊，服务手段多样化；投资建议以客户需求为导向，个性化；</p>
												<p>7)全面资讯：延续多年资讯平台信息快全准的优势。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="headingb">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapseb"
													aria-expanded="false" aria-controls="collapseb">
													怎样成为会员?</button>
											</h5>
										</div>
										<div id="collapseb" class="collapse"
											aria-labelledby="headingb" data-parent="#accordionExamplea">
											<div class="card-body">
												<p>登录到我们平台，进行注册后就已经是我们公司的会员了，后期我们会有一些针对会员的一系列活动，到时候您也可以关注一下。</p>
											</div>
										</div>
									</div>


								</div>
								<a href="#" class="card-link">Card link</a> <a href="#"
									class="card-link">Another link</a>
							</div>
							
							
							<div class="card-body">
								<h5 class="card-title">开户常见问题</h5>
								<div class="accordion" id="accordionQuestion">
									<div class="card">
										<div class="card-header" id="heading1">
											<h5 class="mb-0">
												<button class="btn btn-link" type="button"
													data-toggle="collapse" data-target="#collapse1"
													aria-expanded="true" aria-controls="collapse1">为什么开户需要真实姓名？</button>
											</h5>
										</div>
										<div id="collapse1" class="collapse show"
											aria-labelledby="heading1" data-parent="#accordionQuestion">
											<div class="card-body">
												<p>开户过程中需要验证身份信息和关联银行卡信息，为避免验证失败，请填写真实姓名。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="heading2">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapse2"
													aria-expanded="false" aria-controls="collapse2">
													为什么要填写手机号码?</button>
											</h5>
										</div>
										<div id="collapse2" class="collapse"
											aria-labelledby="heading2" data-parent="#accordionQuestion">
											<div class="card-body">
												<p>为了您能接收账户交易确认信息，请填写正确的手机号码。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="heading3">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapse3"
													aria-expanded="false" aria-controls="collapse3">
													我应该填写15位的老身份证还是18位的新身份证号码?</button>
											</h5>
										</div>
										<div id="collapse3" class="collapse"
											aria-labelledby="heading3" data-parent="#accordionQuestion">
											<div class="card-body">
												<p>身份证号码填写必须与银行登记的信息一致，15位和18位身份证我司均可支持。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="heading4">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapse4"
													aria-expanded="false" aria-controls="collapse4">
													开户做银行验证是否安全?</button>
											</h5>
										</div>
										<div id="collapse4" class="collapse"
											aria-labelledby="heading4" data-parent="#accordionQuestion">
											<div class="card-body">
												<p>银行卡信息验证是安全的，验证过程会跳转到银行等验证支付机构完成，我司仅接受验证是否通过的确认信息。</p>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-header" id="heading5">
											<h5 class="mb-0">
												<button class="btn btn-link collapsed" type="button"
													data-toggle="collapse" data-target="#collapse5"
													aria-expanded="false" aria-controls="collapse5">
													填完银行卡信息是否就代表开户成功?</button>
											</h5>
										</div>
										<div id="collapse5" class="collapse"
											aria-labelledby="heading5" data-parent="#accordionQuestion">
											<div class="card-body">
												<p>填写完银行卡信息后，通过银行卡验证，才代表您已开户成功。</p>
											</div>
										</div>
									</div>
								</div>
								<a href="#" class="card-link">Card link</a> <a href="#"
									class="card-link">Another link</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>