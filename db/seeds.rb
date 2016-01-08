
Party.create(name: "Independent")
Party.create(name: "Democrat")
Party.create(name: "Republican")
Party.create(name: "Socialist")
Party.create(name: "Libertarian")
Party.create(name: "Royalist")
Party.create(name: "Green")


User.create(
  name: "Nick Casta\ñeda",
  email: "npcastaneda@gmail.com",
  password: "password",
  password_confirmation: "password",
  prof_pic_url: "https://lh3.googleusercontent.com/-z8nJcncRloA/AAAAAAAAAAI/AAAAAAAAAFE/-VYqYdc1w_U/photo.jpg",
  party_id: 1,
  city: "Sylmar",
  state: "CA",
  admin: true
)

19.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    prof_pic_url: Faker::Avatar.image,
    party_id: Faker::Number.between(1, 7),
    city: Faker::Address.city,
    state: Faker::Address.state_abbr
  )
end

users = User.all
5.times do
  users.each { |user| user.transcripts.create!(
    title: Faker::Company.buzzword,
    content: Faker::Lorem.paragraphs(5),
    date: Faker::Date.between(100.days.ago, Date.today)
  ) }
end
users[0].transcripts.create!(
  title: "Fourth 2016 Republican Debate",
  content: "BAKER: Tonight's rules are simple. Up to 90 second for each answer. One minute for each follow-up response. And if a candidate goes over their allotted time, you'll here this.
CAVUTO: It sounds like a game show but it's not.
Now I would be remiss if I did not acknowledge the elephant in the room, and I'm not talking about your party's fine symbol. I'm talking about the purpose of tonight's debate.
The economy and what each of you would do to improve it. No more, no less. We are focused on those issues, and what you have said on those issues in your words and what your opponents have said in their words about your words. That is the agenda tonight. How each of you plans to make America better tomorrow. And so we begin. Candidates, as we gather tonight in this very august theater, just outside and across the country, picketers are gathering as well. They're demanding an immediate hike in the minimum wage to $15 an hour. Just a few hours ago, near Governor Andrew Cuomo proposed doing the same for all state workers, the first governor to do so.
Mr. Trump, as the leading presidential candidate on this stage and one whose tax plan exempts couples making up to $50,000 a year from paying any federal income taxes at all, are you sympathetic to the protesters cause since a $15 wage works out to about $31,000 a year?
TRUMP: I can't be Neil. And the and the reason I can't be is that we are a country that is being beaten on every front economically, militarily. There is nothing that we do now to win. We don't win anymore. Our taxes are too high. I've come up with a tax plan that many, many people like very much. It's going to be a tremendous plan. I think it'll make our country and our economy very dynamic.
But, taxes too high, wages too high, we're not going to be able to compete against the world. I hate to say it, but we have to leave it the way it is. People have to go out, they have to work really hard and have to get into that upper stratum. But we can not do this if we are going to compete with the rest of the world. We just can't do it.
CAVUTO: So do not raise the minimum wage?
TRUMP: I would not do it.
(APPLAUSE)
CAVUTO: Dr. Carson, you have long bemoaned this lackluster recovery. And this Facebook map show Americans share your concern. The green represents how the jobs issue is resonating all across the nation, especially here in the state of Wisconsin.
You suggested one minimum wage does not fit all, and that perhaps we should offer a lower or starter wage for young people. Those protesters outside are looking for $15 and nothing less. Where are you?
CARSON: Well, first of all, delighted to be here. My family's here, and my little granddaughter, who's three years old, said she wanted to come to the debate. So this is very cool.
As far as the minimum wage is concerned, people need to be educated on the minimum wage. Every time we raise the minimum wage, the number of jobless people increases.
It's particularly a problem in the black community. Only 19.8 percent of black teenagers have a job, who are looking for one. You know, that -- and that's because of those high wages. If you lower those wages, that comes down.
You know, I can remember, as a youngster -- you know, my first job working in a laboratory as a lab assistant, and multiple other jobs. But I would not have gotten those jobs if someone had to pay me a large amount of money.
But what I did gain from those jobs is a tremendous amount of experience, and how to operate in the world and how to relate to different people, and how to become a responsible individual. And that's what gave me what I needed to ascend the ladder of opportunity in this country.
That's what we need to be thinking about. How do we allow people to ascend the ladder of opportunity, rather than how do we give them everything and keep them dependent?
(APPLAUSE)
CAVUTO: So, sir, just to be clear, you would not raise it?
CARSON: I would not raise it. I would not raise it, specifically because I'm interested in making sure that people are able to enter the job market and take advantage of opportunities.
(APPLAUSE)
CAVUTO: Senator Rubio, you called the recent Democratic debate in Las Vegas a night of giveaways, including free health care, free college and a host of other government-paid benefits. Since you aren't a fan of all they're giving away, tell us tonight what you would take back.
RUBIO: Well, let me begin by answering both the first question and this one, because they're related. As I've said many times before, my parents were never rich people. My father was a bartender. My mother was a maid. They worked for a living. But they were successful people, because, despite the fact that they weren't well educated and had those jobs, they made enough money to buy a home in a safe and stable neighborhood, retire with dignity, leave all four of their children better off than themselves.
We call that the American dream, but in fact, it's a universal dream of a better life that people have all over the world. It is a reminder that every country in the world has rich people.
What makes America special is that we have millions and millions of people that are not rich, that through hard work and perseverance are able to be successful.
The problem is that today people are not successful working as hard as ever because the economy is not providing jobs that pay enough. If I thought that raising the minimum wage was the best way to help people increase their pay, I would be all for it, but it isn't. In the 20th century, it's a disaster.
If you raise the minimum wage, you're going to make people more expensive than a machine. And that means all this automation that's replacing jobs and people right now is only going to be accelerated.
Here's the best way to raise wages. Make America the best place in the world to start a business or expand an existing business, tax reform and regulatory reform, bring our debt under control, fully utilize our energy resources so we can reinvigorate manufacturing, repeal and replace Obamacare, and make higher education faster and easier to access, especially vocational training. For the life of me, I don't know why we have stigmatized vocational education. Welders make more money than philosophers. We need more welders and less philosophers.
(APPLAUSE)
If we do that -- and if we do this -- if we do this, we will be able to increase wages for millions of Americans and we will be able to leave everyone better off without making anyone worse off.
CAVUTO: Thank you, Senator Rubio.
(APPLAUSE)
BARTIROMO: We've asked people on Facebook to submit their questions for the candidates. Seth Bell wrote, 'We are approaching $20 trillion in national debt. Specifically, what plans do you have to cut federal spending?'' Governor Kasich, you have spoken much about your success in balancing the budget under President Clinton. Today the national debt is at record highs and growing unsustainably. Interest will be the fastest-growing part of the federal budget, tripling over the next 10 years. Social Security, the lifeline of millions of American seniors, is rushing toward insolvency. With all of the tax plans presented tonight, estimated to cost anywhere between $2 trillion and $12 trillion over a decade, what specific steps will you take to balance the budget?
KASICH: First of all, let me just say that, in the state of Ohio -- and I'm the only acting executive on -- on this stage today -- we do have a moderate increase in the minimum wage. And I got to tell you, my father carried mail on his back. His father was a coal miner. He died of black lung. He was losing his eyesight. My mother's mother lived with us. She could barely speak English. I come from a town where if the wind blew the wrong way, people found themselves out of work. An economic theory is fine, but you know what? People need help.
Now, I have a plan that, in fact, would cut taxes, but not $11 trillion or $12 trillion that would put my children further in debt. I have a plan that would not only cut taxes, lower the income tax rate for individuals, lower the tax for businesses so businesses will compete here and not move operations overseas, and also a plan -- the only plan of anybody standing on this stage to get us to a balanced budget by the end of a second term.
And, you know, the simple fact of the matter is, we hear a lot of promises in this debate, a lot of promises about these tax cuts or tax schemes sometimes that I call them. Hillary and the Democrats promise everything on the spending side. We've got to be responsible about what we propose on the tax side.
Yes, lower taxes, lower spending. My website, JohnKasich.com, will show you exactly how we balance the budget. I balanced the budget in Washington as a chief architect, and I have balanced it in Ohio for one reason. When you balance the budget and you cut taxes, people get work.
And our most important moral purpose as leaders in the political system is to make sure we create an environment for job creation so people can live their dreams and realize their God-given potential. That's why it's so important.
And for those at the bottom, we've got to do what we can to train them so they can move up. But to just look the other way is not acceptable, because, you know what, as the governor of Ohio I have to deal with real challenges, and we've gotten it done in our state, and I will do it for America.
(APPLAUSE)
BARTIROMO: Did you want to name any specific steps, sir?
KASICH: Sure. We would move the Medicare system from a 7 percent growth down to about a 5 percent growth. And I have a whole series of ways to do that. In Ohio, we reduced Medicaid funding for the poor from 10 percent to 2.5 percent, didn't cut one benefit or didn't take anybody off the rolls. Why? Because we're innovators. I've been an innovator my entire career. And I really don't care what special interests or lobbyists have to say. I have a job to do when I take over a public office. Now, we freeze non-defense discretionary for eight years. We also put an increase in defense spending. Our tax cuts balance out. And at the end of the day, we will get to a balanced budget.
And I want everybody here to know, when I was Budget Committee chairman in Washington, I stepped on every toe in that town, and we got to a balanced budget, and we had enormous job growth. And as governor of Ohio, we went from 350,000 lost jobs to a gain of 347,000 jobs.
BARTIROMO: Thank you, sir.
KASICH: I'll do it in Washington. I've done it twice; I'll do it thrice for the United States of America.
BARTIROMO: Senator Cruz, the International Monetary Fund recently cut its expectations for economic growth. Many economists expect a recession to hit the U.S. within the next year due to the weakening of manufacturing. The next president will have to deal with it. You say tax reform is a powerful lever to spur economic expansion. You're calling for a 10 percent income tax and a 16 percent business tax. What other elements do you need in this plan to actually create jobs?
CRUZ: Well, Maria, it's great to be with you. It's great to be here in Milwaukee. You know, the question you asked really I think is the most important question any of us can have -- face, which is, how do we get the economy growing? How do we bring back economic growth?
Because economic growth, it's foundational to every other challenge we have. As you rightly noted, from 2008 to today, our economy has grown 1.2 percent a year on average. The Obama economy is a disaster, and the IMF is telling us this is a new normal. It doesn't have to be.
If you look at the history of America, there are three levers that government has had to facilitate economic growth. The first is tax reform. And as you noted, I have rolled out a bold and simple flat tax: 10 percent for every American that would produce booming growth and 4.9 million new jobs within a decade.
The second element is regulatory reform, pulling back the armies of regulators that have descended like locusts on small businesses.
And the third element is sound money. Every time we've pursued all three of those -- whether in the 1920s with Calvin Coolidge or the 1960s with JFK or the 1980s with Ronald Reagan -- the result has been incredible economic growth. We have done it before, and with leadership, we can do it again.
(APPLAUSE)
BARTIROMO: Thank you, sir.
KASICH: Excuse me.
BARTIROMO: Governor Bush...
KASICH: Yeah, I would like to make a comment.
BUSH: You've already made two comments, John. It's my turn.
BARTIROMO: We have more questions for you, Governor Kasich, coming up. We have more questions for you, Governor Kasich.
BUSH: I got about four minutes in the last debate. I'm going to get my question right now.
KASICH: I appreciate it, Jeb. I'm all of you. But I want at some point to talk about a value-added tax and $11 trillion, $12 trillion tax cuts that will put our kids way deeper in the hole than they have been at this point. So I would like to talk about it at some point, because that's what leadership is.
BARTIROMO: We will -- we will certainly get to that. Governor Bush?
BUSH: Yes.
BARTIROMO: Almost 40 percent of Americans are without a job and are not looking. Many have given up. That's what the participation rate tells us. You've said your policies will drive the economy back to 4 percent growth, which we haven't seen since the year 2000. What specific regulations would you change? And how will that lead to jobs and growth?
BUSH: First of all, we could get to 4 percent growth. The new normal of 2 percent puts huge demands on government. The reason why we have structural deficits is that more and more people are relying on government and the growth that we don't have makes -- makes the deficit grow.
A 4 percent growth strategy starts with tax reform. And the proposal that I've laid out is the one the Wall Street Journal editorial board has said is the most pro-growth of all the proposals out there. We cut the -- we eliminate a lot of deductions and cut the rates down. A corporate rate of 20 percent, which puts us 5 percent above -- below that of China, and allows us full expensing of investing. It would create an explosion of investment back into this country, creating higher-wage jobs, and so that's part of it.
On the regulatory side I think we need to repeal every rule that Barack Obama has in terms of work in progress, every one of them.",

  date: "20160104"
)
users[1].transcripts.create!(
  title: "Obama - 2009 Inaugural Address",
  content: "My fellow citizens: I stand here today humbled by the task before us, grateful for the trust you have bestowed, mindful of the sacrifices borne by our ancestors. I thank President Bush for his service to our nation, as well as the generosity and cooperation he has shown throughout this transition.
    Forty-four Americans have now taken the presidential oath. The words have been spoken during rising tides of prosperity and the still waters of peace. Yet, every so often the oath is taken amidst gathering clouds and raging storms. At these moments, America has carried on not simply because of the skill or vision of those in high office, but because We the People have remained faithful to the ideals of our forbearers, and true to our founding documents.
    So it has been. So it must be with this generation of Americans.
    That we are in the midst of crisis is now well understood. Our nation is at war, against a far-reaching network of violence and hatred. Our economy is badly weakened, a consequence of greed and irresponsibility on the part of some, but also our collective failure to make hard choices and prepare the nation for a new age. Homes have been lost; jobs shed; businesses shuttered. Our health care is too costly; our schools fail too many; and each day brings further evidence that the ways we use energy strengthen our adversaries and threaten our planet.
    These are the indicators of crisis, subject to data and statistics. Less measurable but no less profound is a sapping of confidence across our land - a nagging fear that America's decline is inevitable, and that the next generation must lower its sights.
    Today I say to you that the challenges we face are real. They are serious and they are many. They will not be met easily or in a short span of time. But know this, America - they will be met.
    On this day, we gather because we have chosen hope over fear, unity of purpose over conflict and discord.
    On this day, we come to proclaim an end to the petty grievances and false promises, the recriminations and worn out dogmas, that for far too long have strangled our politics.
    We remain a young nation, but in the words of Scripture, the time has come to set aside childish things. The time has come to reaffirm our enduring spirit; to choose our better history; to carry forward that precious gift, that noble idea, passed on from generation to generation: the God-given promise that all are equal, all are free, and all deserve a chance to pursue their full measure of happiness.
    In reaffirming the greatness of our nation, we understand that greatness is never a given. It must be earned. Our journey has never been one of short-cuts or settling for less. It has not been the path for the faint-hearted - for those who prefer leisure over work, or seek only the pleasures of riches and fame. Rather, it has been the risk-takers, the doers, the makers of things - some celebrated but more often men and women obscure in their labor, who have carried us up the long, rugged path towards prosperity and freedom.
    For us, they packed up their few worldly possessions and traveled across oceans in search of a new life.
    For us, they toiled in sweatshops and settled the West; endured the lash of the whip and plowed the hard earth.
    For us, they fought and died, in places like Concord and Gettysburg; Normandy and Khe Sahn.
    Time and again these men and women struggled and sacrificed and worked till their hands were raw so that we might live a better life. They saw America as bigger than the sum of our individual ambitions; greater than all the differences of birth or wealth or faction.
    This is the journey we continue today. We remain the most prosperous, powerful nation on Earth. Our workers are no less productive than when this crisis began. Our minds are no less inventive, our goods and services no less needed than they were last week or last month or last year. Our capacity remains undiminished. But our time of standing pat, of protecting narrow interests and putting off unpleasant decisions - that time has surely passed. Starting today, we must pick ourselves up, dust ourselves off, and begin again the work of remaking America.
    For everywhere we look, there is work to be done. The state of the economy calls for action, bold and swift, and we will act - not only to create new jobs, but to lay a new foundation for growth. We will build the roads and bridges, the electric grids and digital lines that feed our commerce and bind us together. We will restore science to its rightful place, and wield technology's wonders to raise health care's quality and lower its cost. We will harness the sun and the winds and the soil to fuel our cars and run our factories. And we will transform our schools and colleges and universities to meet the demands of a new age. All this we can do. And all this we will do.
    Now, there are some who question the scale of our ambitions - who suggest that our system cannot tolerate too many big plans. Their memories are short. For they have forgotten what this country has already done; what free men and women can achieve when imagination is joined to common purpose, and necessity to courage.
    What the cynics fail to understand is that the ground has shifted beneath them - that the stale political arguments that have consumed us for so long no longer apply. The question we ask today is not whether our government is too big or too small, but whether it works - whether it helps families find jobs at a decent wage, care they can afford, a retirement that is dignified. Where the answer is yes, we intend to move forward. Where the answer is no, programs will end. And those of us who manage the public's dollars will be held to account - to spend wisely, reform bad habits, and do our business in the light of day - because only then can we restore the vital trust between a people and their government.
    Nor is the question before us whether the market is a force for good or ill. Its power to generate wealth and expand freedom is unmatched, but this crisis has reminded us that without a watchful eye, the market can spin out of control - and that a nation cannot prosper long when it favors only the prosperous. The success of our economy has always depended not just on the size of our Gross Domestic Product, but on the reach of our prosperity; on the ability to extend opportunity to every willing heart - not out of charity, but because it is the surest route to our common good.
    As for our common defense, we reject as false the choice between our safety and our ideals. Our Founding Fathers, faced with perils we can scarcely imagine, drafted a charter to assure the rule of law and the rights of man, a charter expanded by the blood of generations. Those ideals still light the world, and we will not give them up for expedience's sake. And so to all other peoples and governments who are watching today, from the grandest capitals to the small village where my father was born: know that America is a friend of each nation and every man, woman, and child who seeks a future of peace and dignity, and we are ready to lead once more.
    Recall that earlier generations faced down fascism and communism not just with missiles and tanks, but with the sturdy alliances and enduring convictions. They understood that our power alone cannot protect us, nor does it entitle us to do as we please. Instead, they knew that our power grows through its prudent use; our security emanates from the justness of our cause, the force of our example, the tempering qualities of humility and restraint.
    We are the keepers of this legacy. Guided by these principles once more, we can meet those new threats that demand even greater effort - even greater cooperation and understanding between nations. We will begin to responsibly leave Iraq to its people, and forge a hard-earned peace in Afghanistan. With old friends and former foes, we’ll work tirelessly to lessen the nuclear threat, and roll back the specter of a warming planet. We will not apologize for our way of life, nor will we waver in its defense, and for those who seek to advance their aims by inducing terror and slaughtering innocents, we say to you now that our spirit is stronger and cannot be broken; you cannot outlast us, and we will defeat you.
    For we know that our patchwork heritage is a strength, not a weakness. We are a nation of Christians and Muslims, Jews and Hindus - and non-believers. We are shaped by every language and culture, drawn from every end of this Earth; and because we have tasted the bitter swill of civil war and segregation, and emerged from that dark chapter stronger and more united, we cannot help but believe that the old hatreds shall someday pass; that the lines of tribe shall soon dissolve; that as the world grows smaller, our common humanity shall reveal itself; and that America must play its role in ushering in a new era of peace.
    To the Muslim world, we seek a new way forward, based on mutual interest and mutual respect. To those leaders around the globe who seek to sow conflict, or blame their society's ills on the West - know that your people will judge you on what you can build, not what you destroy. To those who cling to power through corruption and deceit and the silencing of dissent, know that you are on the wrong side of history; but that we will extend a hand if you are willing to unclench your fist.
    To the people of poor nations, we pledge to work alongside you to make your farms flourish and let clean waters flow; to nourish starved bodies and feed hungry minds. And to those nations like ours that enjoy relative plenty, we say we can no longer afford indifference to the suffering outside our borders; nor can we consume the world's resources without regard to effect. For the world has changed, and we must change with it.
    As we consider the road that unfolds before us, we remember with humble gratitude those brave Americans who, at this very hour, patrol far-off deserts and distant mountains. They have something to tell us, just as the fallen heroes who lie in Arlington whisper through the ages. We honor them not only because they are guardians of our liberty, but because they embody the spirit of service; a willingness to find meaning in something greater than themselves. And yet, at this moment - a moment that will define a generation - it is precisely this spirit that must inhabit us all.
    For as much as government can do and must do, it is ultimately the faith and determination of the American people upon which this nation relies. It is the kindness to take in a stranger when the levees break, the selflessness of workers who would rather cut their hours than see a friend lose their job which sees us through our darkest hours. It is the firefighter's courage to storm a stairway filled with smoke, but also a parent's willingness to nurture a child, that finally decides our fate.
    Our challenges may be new. The instruments with which we meet them may be new. But those values upon which our success depends - honesty and hard work, courage and fair play, tolerance and curiosity, loyalty and patriotism - these things are old. These things are true. They have been the quiet force of progress throughout our history. What is demanded then is a return to these truths. What is required of us now is a new era of responsibility - a recognition, on the part of every American, that we have duties to ourselves, our nation, and the world, duties that we do not grudgingly accept but rather seize gladly, firm in the knowledge that there is nothing so satisfying to the spirit, so defining of our character, than giving our all to a difficult task.
    This is the price and the promise of citizenship.
    This is the source of our confidence - the knowledge that God calls on us to shape an uncertain destiny.
    This is the meaning of our liberty and our creed - why men and women and children of every race and every faith can join in celebration across this magnificent mall, and why a man whose father less than sixty years ago might not have been served at a local restaurant can now stand before you to take a most sacred oath.
    So let us mark this day with remembrance, of who we are and how far we have traveled. In the year of America's birth, in the coldest of months, a small band of patriots huddled by dying campfires on the shores of an icy river. The capital was abandoned. The enemy was advancing. The snow was stained with blood. At a moment when the outcome of our revolution was most in doubt, the father of our nation ordered these words be read to the people:
    \"Let it be told to the future world...that in the depth of winter, when nothing but hope and virtue could survive...that the city and the country, alarmed at one common danger, came forth to meet [it].\"
    America. In the face of our common dangers, in this winter of our hardship, let us remember these timeless words. With hope and virtue, let us brave once more the icy currents, and endure what storms may come. Let it be said by our children's children that when we were tested we refused to let this journey end, that we did not turn back nor did we falter; and with eyes fixed on the horizon and God's grace upon us, we carried forth that great gift of freedom and delivered it safely to future generations.
    Thank you. God bless you and God bless the United States of America.",
  date: "20090120"
  )

users[2].transcripts.create!(
  title: "Sanders - Presidential nnouncement",
  content: "Thank you all very very much for being out here today. Let me just make a brief comment and take a few questions. We don’t have an endless amount of time. I have to get back.
    Let me just say this. This country today in my view, has more serious crises than any time since the Great Depression of the 1930s.
    For most Americans, their reality is that they are working longer hours for lower wages. In inflation-adjusted income, they are earning less money than they used to, years ago, in spite a huge increase in technology and productivity.
    bernard sanders 2016 announcement speechSo, all over this country, I have been talking to people, and they say, “How does it happen? I’m producing more, but I’m working longer hours for lower wages. My kid can’t afford to go to college, and I’m having a hard time affording health care. What happened, while at exactly the same time, 99 percent of the income being generated in this country is going to the top 1 percent?”
    How does it happen that the top 1 percent owns almost as much wealth as the bottom 90 percent? And, my conclusion is that that type of economics is not only immoral, is wrong, it is unsustainable. It can’t continue.
    We can’t continue having a nation in which we have the highest rate of childhood poverty of any major nation on Earth, at the same time as we’re seeing a proliferation of millionaires and billionaires.
    So, that’s the major issue. The major issue is how do we create an economy that works for all of our people rather than a small number of billionaires, and the second issue, directly related, is the fact that as a result of the disastrous Supreme Court decision on Citizens United, we now have a political situation where billionaires are literally able to buy themselves elections and candidates. Let’s not kid ourselves. That is the reality right now.
    So, you’ve got the Koch Brothers and other billionaire families who are prepared to spend hundreds and hundreds of millions of dollars in elections to buy the candidates of their choice, often extreme right wing candidates.
    I am the former chairman of the Senate Veterans Committee, and I can tell you that I don’t believe that the men and women who defend American democracy fought to create a situation where American billionaires own the political process. That’s a huge issue that we’ve got to deal with.
    Right now, in terms of issues, we have a Republican Party that with few exceptions does not even recognize the reality of climate change, let alone that it is caused by human activity, let alone that the scientific community tells us that this is the major global environmental crisis that we face, and I want to see this nation lead the world in transforming our energy system away from fossil fuels, to energy efficiency and sustainable energy.
    Real unemployment in America is not five and a half percent, if you include those people who have given up looking for work, and people who are working part time when they want to work full time. Real unemployment is 11 percent. We need to create millions of jobs, and the best way to do it is to rebuild our crumbling infrastructure, and I’ve introduced legislation to do just that: Create and maintain 13 million jobs.
    In my state of Vermont, and throughout this country, young people, bright, young, able kids, cannot afford to go to college and are leaving school deeply in debt. In Germany, countries around the world, they understand that you tap the intellectual capabilities of young people, and you make college tuition in public colleges and universities free. That is my view as well.
    So, there are enormous issues facing this country. Let me conclude by saying this, and I say this to the media: I have never run a negative ad in my life. I have been in many campaigns, and you ask the people of Vermont, they will tell you, “Bernie Sanders has never run a negative ad. I hate and detest these 30 second ugly negative ads.
    I believe that in a democracy, what elections are about are serious debates about serious issues, not political gossip, not making campaign soap operas. This is not the Red Sox versus the Yankees. This is the debate over major issues facing the American people.
    Honest people, my conservative friends, differ with me. That’s fine. That’s called democracy. It’s a good thing, but I’ve got to hope, and I have to ask the media’s help on this thing: Allow us to discuss the important issues facing the American people. Let’s not get hung up on political soap opera, and all the other aspects of modern campaigns
    Thank you, and just let me take a few…
    [Question]
    Essentially, well, I’ll give you a detailed proposal right now. I regard it as unacceptable that you have major corporations in this country who make billions of dollars in profit who do not pay a nickel in federal income tax because, among other things, they stash their money in the Cayman Islands and Bermuda and other tax havens.
    The wealthiest people in this country and the largest corporations have got to join the United States of America. They’ve got to come back to this country, and they’ve got to maintain and respect their responsibilities, and their responsibilities are not to ship jobs to China. They responsibilities are not to avoid paying federal taxes. So, we need real tax reform that says to the wealthiest people and the largest corporations, you’re going to have to start paying your fair share.
    [Question]
    I owe my brother an enormous amount. I grew up in a family that did not have a lot of money. My dad came to this country at the age of 17, dropped out of high school, never made any money. My mother graduated high school. We didn’t have a whole lot of books in the house. It was my brother who actually introduced me to a lot of my ideas. So, I hope my brother does very well in his race for Parliament in the UK.
    [Question]
    Absolutely not. No, that’s a fair question, and let’s be clear. To say that people disagree on issues, and the point of these issues, that’s what a debate is about. That’s what democracy is about. So, no, certainly I would be doing that.
    What I’m saying is, you know this better than I do, is turn on these vicious 30-second ads, and vicious personal attacks against other candidates, I think the American people are sick and tired of it and I’ve never done it in my life.
    [Question]
    I think what is more fair game for my campaign is the role of money in politics. Where are the conflicts of interest, when the Koch brothers are going to be spending 900 million dollars in this campaign, making a lot of their money from fossil fuel, and having a platform which, as I understand it, calls for the elimination of Social Security and Medicare and Medicaid, ideas which are increasingly palatable to my Republican colleagues. That’s a conflict of interest.
    So, the issue here is not the Clinton Foundation. That’s a fair issue. The issue is the huge amounts of money that it takes to run a campaign today.
    And let me say this, and I say it honestly. One of the hesitancies that I had about deciding whether to run or not, is obviously about money. I’m not going to get money from the Koch brothers, and I’m not going to get money from billionaires. I’m going to have to raise my campaign contributions through BernieSanders.com, and small, individual contributions. That’s how I’m going to do it.
    But, I seriously wonder, and it’s not just Bernie Sanders, I wonder now, in this day and age, whether it is possible for any candidate who is not a billionaire, or who is not beholden to the billionaire class, to be able to run successful campaigns, and if that is the case, I want you all to recognize what a sad state of affairs that is for American democracy.
    [Question]
    It’s too early. We don’t know what Hillary’s stances are on all the issues, but this is what I can tell you, and maybe let me conclude on this: I voted against the war in Iraq, and not only did I vote against it. I helped lead the effort, and many of the things I said back then turned out to be true, I mean the massive destabilization in the region.
    I am helping right now to lead the effort against the TransPacific Partnership, because I believe it continues a trend of horrendous trade policies that have cost us millions of decent paying jobs. I helped lead the effort against the Keystone pipeline, because I don’t think we should be transporting some of the dirtiest fuel in the world, and we have to be really vigorous in terms of transforming the energy system.
    So, those are some of my views, and we’ll see where Secretary Clinton comes out.
    All right. With that, I have to get going.
    Last question.
    [Question]
    Oh, no, not at all. We are in this race to win. It’s not a question, but you’ve got to understand, I have asked people to understand my history.
    You are looking at a guy undisputably, who has the most unusual political history of anybody in the United States Congress.
    I have run, it’s not only that I am the longest serving independent in the history of he United States Congress, I have run for statewide office and I got one percent of the vote. I don’t know if I should be proud of that, but my last election, I got 71 percent of the vote. The point is, that’s not the right question.
    The question is, if you raise the issues that are on the hearts and minds of the American people, if you try to put a movement together that says, we have got to stand together as a people and say that, this capitol, this beautiful capitol, our country belonged to all of us, and not the billionaire class, that is not raising an issue. That is winning elections. That is where the American people are.",
  date: "20151110"
)
transcripts = Transcript.all


15.times do
  word = Faker::Number.between(1, 100)
  transcripts.each { |transcript| transcript.annotations.create!(
    comment: Faker::Lorem.paragraphs(2),
    link: "www.wikipedia.com",
    user_id: transcript.user_id,
    start: word,
    :end => word
  ) }
end






