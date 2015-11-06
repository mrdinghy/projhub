# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email




User.create(email: 'arasappan@cedre.org.my', password: 'aru1234')
User.create(email: 'jmahalik@cedre.org.my', password: 'jyoti1234')





implementers = Implementer.create([
                                      { name: 'Artisan Associates' },
                                      { name: 'Bechtel Corporation' },
                                      { name: 'Chemonics' },
                                      { name: 'RLS Inc.' },
                                      { name: 'UNICEF' }

                                  ])



provinces = Province.create([
                                { name: 'Johor', capital: 'Phnom Penh', population: 1501725, area: 678.46, iso: 'KH-12'},
                                { name: 'Kedah', capital: 'Battambang', population: 1058174, area: 11702, iso: 'KH-2'},
                                { name: 'Kelantan', capital: 'Kampong Cham', population: 928694, area: 4549, iso: 'KH-3'},
                                { name: 'Malacca', capital: 'Kampong Chhang', population: 472341, area: 5521, iso: 'KH-4'},
                                { name: 'Negeri Sembilan', capital: 'Kampong Speu', population: 716944, area: 7017, iso: 'KH-5'},
                                { name: 'Pahang', capital: 'Kampong Thom', population: 631409, area: 13814, iso: 'KH-6'},
                                { name: 'Penang', capital: 'Kampot', population: 585850, area: 4873, iso: 'KH-7'},
                                { name: 'Perak', capital: 'Ta Khmao', population: 1265280, area: 3568, iso: 'KH-8'},
                                { name: 'Perlis', capital: 'Koh Kong', population: 117481, area: 11160, iso: 'KH-9'},
                                { name: 'Slangor', capital: 'Kep', population: 35753, area: 336, iso: 'KH-23'},
                                { name: 'Terengganu', capital: 'Kratié', population: 319217, area: 11094, iso: 'KH-10'},
                                { name: 'Kuala Lumpur', capital: 'Senmonorom', population: 61107, area: 14288, iso: 'KH-11'},
                                { name: 'Putrajaya', capital: 'Samraong', population: 185819, area: 6158, iso: 'KH-22'},
                                { name: 'Sabah', capital: 'Pailin', population: 70486, area: 803, iso: 'KH-24'},
                                { name: 'Sarawak', capital: 'Sihanoukville', population: 221396, area: 868, iso: 'KH-18'},
                                { name: 'Labuan', capital: 'Phnom Tbeng Meanchey', population: 171139, area: 13788, iso: 'KH-13'}

                            ])







projects = Project.create([

                              { name:  'Pretoria Urban Roads Phase II',  location: 'George Town',  plan_start: DateTime.new(2016,8,1,8), plan_end: DateTime.new(2017,5,1,15), project_value: 41246017, lat: '12.5373', long: '104.673', implementer_id: 1, province_id: 1, project_type_id: 1},
                              { name:  'Elliot-Durban Roadways',  location: 'Durban',  plan_start: DateTime.new(2014,9,1,8), plan_end: DateTime.new(2015,10,1,15), project_value: 70304591, lat: '12.5562', long: '106.935', implementer_id: 2, province_id: 1, project_type_id: 2},
                              { name:  'Liberty Highway',  location: 'Port Elizabeth',  plan_start: DateTime.new(2015,6,1,8), plan_end: DateTime.new(2016,8,1,15), project_value: 74869144, lat: '12.4783', long: '105.291', implementer_id: 3, province_id: 1, project_type_id: 3},
                              { name:  'SCT Trans Highway',  location: 'Saldana',  plan_start: DateTime.new(2015,4,1,8), plan_end: DateTime.new(2016,8,1,15), project_value: 24871574, lat: '12.866', long: '105.074', implementer_id: 4, province_id: 1, project_type_id: 1},
                              { name:  'Durban Water Supply Project',  location: 'Durban',  plan_start: DateTime.new(2015,8,1,8), plan_end: DateTime.new(2016,5,1,15), project_value: 72036232, lat: '13.2419', long: '106.934', implementer_id: 5, province_id: 1, project_type_id: 4},
                              { name:  'Kimberley Reservoir Project',  location: 'Kimberly',  plan_start: DateTime.new(2016,9,1,8), plan_end: DateTime.new(2017,12,1,15), project_value: 98205799, lat: '13.0416', long: '105.689', implementer_id: 1, province_id: 8, project_type_id: 1},
                              { name:  'Eastern Cape Rural Water Project',  location: 'Greytown',  plan_start: DateTime.new(2015,11,1,8), plan_end: DateTime.new(2016,12,1,15), project_value: 12248264, lat: '13.2014', long: '104.443', implementer_id: 2, province_id: 6, project_type_id: 1},
                              { name:  'Western Cape Medical Center',  location: 'Cape Town',  plan_start: DateTime.new(2016,9,1,8), plan_end: DateTime.new(2017,2,1,15), project_value: 19807332, lat: '12.5825', long: '106.658', implementer_id: 3, province_id: 2, project_type_id: 1},
                              { name:  'Nelspruit Rural Clinic',  location: 'Nelspruit',  plan_start: DateTime.new(2015,12,1,8), plan_end: DateTime.new(2016,5,1,15), project_value: 94038982, lat: '12.9001', long: '103.948', implementer_id: 4, province_id: 2, project_type_id: 4},
                              { name:  'Pretoria Specialist Hospital',  location: 'Pretoria',  plan_start: DateTime.new(2016,11,1,8), plan_end: DateTime.new(2017,8,1,15), project_value: 25205641, lat: '13.1228', long: '105.936', implementer_id: 5, province_id: 3, project_type_id: 2},
                              { name:  'Northern Health Center',  location: 'Mafikeng',  plan_start: DateTime.new(2014,3,1,8), plan_end: DateTime.new(2015,9,1,15), project_value: 57577281, lat: '12.5449', long: '104.936', implementer_id: 3, province_id: 4, project_type_id: 1},
                              { name:  'Northern Rural Electric Project',  location: 'Britstown',  plan_start: DateTime.new(2015,10,1,8), plan_end: DateTime.new(2016,5,1,15), project_value: 10096570, lat: '12.5208', long: '106.255', implementer_id: 4, province_id: 7, project_type_id: 1},
                              { name:  'Eastern Cape Rural Electrification',  location: 'Durban',  plan_start: DateTime.new(2016,11,1,8), plan_end: DateTime.new(2017,9,1,15), project_value: 31594848, lat: '12.6096', long: '104.082', implementer_id: 3, province_id: 6, project_type_id: 3},
                              { name:  'Eastern Cape Industrial Park Power Project',  location: 'Durban',  plan_start: DateTime.new(2014,6,1,8), plan_end: DateTime.new(2015,2,1,15), project_value: 8135975, lat: '12.4802', long: '106.451', implementer_id: 4, province_id: 5, project_type_id: 2},
                              { name:  'EL Power Supply',  location: 'East London',  plan_start: DateTime.new(2014,5,1,8), plan_end: DateTime.new(2015,1,1,15), project_value: 51537263, lat: '12.6959', long: '103.244', implementer_id: 2, province_id: 4, project_type_id: 3}
                          ])


projecttypes = ProjectType.create([
                                      { name: 'Hospital Upgrades'},
                                      { name: 'New Health Clinics'},
                                      { name: 'Clinic Upgrades'},
                                      { name: 'Education Infrastructure'},
                                      { name: 'Capacity Building'},
                                      { name: 'Training'},
                                      { name: 'Other'}
                                  ])



projectstages = ProjectStage.create([
                                        { name: 'Design'},
                                        { name: 'Procurement'},
                                        { name: 'Phase I'},
                                        { name: 'Phase II'},
                                        { name: 'Inspection'}
                                    ])

projecttakss = ProjectTask.create([

                                      { name:  'IBRM Training II',  location: 'George Town',  plan_start: DateTime.new(2016,8,1,8), plan_end: DateTime.new(2017,5,1,15), task_value: 41246017, lat: '12.5373', long: '104.673', project_stage_id: 1, province_id: 1, task_type: 2, predecessor_id: 0, project_id: 1, task_weight: 5},
                                      { name:  'Clinic Construction - JoeTown',  location: 'Durban',  plan_start: DateTime.new(2014,9,1,8), plan_end: DateTime.new(2015,10,1,15), task_value: 70304591, lat: '12.5562', long: '106.935', project_stage_id: 2, province_id: 1, task_type: 2, predecessor_id: 1, project_id: 1, task_weight: 12},
                                      { name:  'Web Design Workshop',  location: 'Port Elizabeth',  plan_start: DateTime.new(2015,6,1,8), plan_end: DateTime.new(2016,8,1,15), task_value: 74869144, lat: '12.4783', long: '105.291', project_stage_id: 3, province_id: 1, task_type: 3, predecessor_id: 2, project_id: 1, task_weight: 15},
                                      { name:  'IT Server Room Procurement',  location: 'Saldana',  plan_start: DateTime.new(2015,4,1,8), plan_end: DateTime.new(2016,8,1,15), task_value: 24871574, lat: '12.866', long: '105.074', project_stage_id: 4, province_id: 1, task_type: 1, predecessor_id: 3, project_id: 1, task_weight: 14},
                                      { name:  'IT Server Room Design',  location: 'Saldana',  plan_start: DateTime.new(2015,4,1,8), plan_end: DateTime.new(2016,8,1,15), task_value: 24871574, lat: '12.866', long: '105.074', project_stage_id: 4, province_id: 1, task_type: 1, predecessor_id: 4, project_id: 1, task_weight: 8},
                                      { name:  'IT Server Room Installation',  location: 'Saldana',  plan_start: DateTime.new(2015,4,1,8), plan_end: DateTime.new(2016,8,1,15), task_value: 24871574, lat: '12.866', long: '105.074', project_stage_id: 4, province_id: 1, task_type: 1, predecessor_id: 4, project_id: 1, task_weight: 16},
                                      { name:  'Network Wiring',  location: 'Saldana',  plan_start: DateTime.new(2015,4,1,8), plan_end: DateTime.new(2016,8,1,15), task_value: 24871574, lat: '12.866', long: '105.074', project_stage_id: 4, province_id: 1, task_type: 1, predecessor_id: 6, project_id: 1, task_weight: 10},
                                      { name:  'Network Configuration',  location: 'Saldana',  plan_start: DateTime.new(2015,4,1,8), plan_end: DateTime.new(2016,8,1,15), task_value: 24871574, lat: '12.866', long: '105.074', project_stage_id: 4, province_id: 1, task_type: 1, predecessor_id: 0, project_id: 1, task_weight: 10},
                                      { name:  'Testing',  location: 'Saldana',  plan_start: DateTime.new(2015,4,1,8), plan_end: DateTime.new(2016,8,1,15), task_value: 24871574, lat: '12.866', long: '105.074', project_stage_id: 4, province_id: 1, task_type: 1, predecessor_id: 0, project_id: 1, task_weight: 10},
                                      { name:  'Delivery',  location: 'Saldana',  plan_start: DateTime.new(2015,4,1,8), plan_end: DateTime.new(2016,8,1,15), task_value: 24871574, lat: '12.866', long: '105.074', project_stage_id: 4, province_id: 1, task_type: 1, predecessor_id: 0, project_id: 1, task_weight: 10}
                                  ])





posts = Post.create([
  { name: 'Build Fish Pond',
    description: 'A third video surfaced on Tuesday that sheds new light on the incident between',
    start_date: DateTime.new(2015,8,1,8),
    end_date:  DateTime.new(2016,8,1,8),
    post_type: 3,
    post_value: 345000.45
  },

  { name: 'My Week in Singapore',
    description: 'A third video surfaced on Tuesday that sheds new light on the incident between',
    start_date: DateTime.new(2015,8,1,8),
    end_date:  DateTime.new(2016,8,1,8),
    post_type: 2,
    post_value: 456000.45
  },

  { name: 'Build Fish Pond',
    description: 'A third video surfaced on Tuesday that sheds new light on the incident between',
    start_date: DateTime.new(2015,8,1,8),
    end_date:  DateTime.new(2016,8,1,8),
    post_type: 1,
    post_value: 345000.45
  },

  { name: 'Koi Fish Party',
    description: 'A third video surfaced on Tuesday that sheds new light on the incident between',
    start_date: DateTime.new(2015,8,1,8),
    end_date:  DateTime.new(2016,8,1,8),
    post_type: 2,
    post_value: 3860.45
  },

  { name: 'Shaken Not Stirred',
    description: 'A third video surfaced on Tuesday that sheds new light on the incident between',
    start_date: DateTime.new(2015,8,1,8),
    end_date:  DateTime.new(2016,8,1,8),
    post_type: 3,
    post_value: 345000.45
  },

  { name: 'Artisan Solutions',
    description: 'A third video surfaced on Tuesday that sheds new light on the incident between',
    start_date: DateTime.new(2015,8,1,8),
    end_date:  DateTime.new(2016,8,1,8),
    post_type: 3,
    post_value: 345000.45
  }

])

needs = Need.create([

          { name:  'Clean up garbage in park', description: 'Webservices proactive aggregate embedded podcasting 24/7 capture distributed synergies clicks-and-mortar scalable unleash? Systems unleash sticky platforms synthesize, platforms envisioneer, relationships repurpose grow synergistic enable, transition real-time empower capture robust redefine. Portals open-source initiatives one-to-one, clicks-and-mortar ubiquitous web-readiness engage authentic intuitive: extensible compelling. Mindshare exploit architectures matrix disintermediate remix ', fiscalyear: 2016},
          { name:  'Increase test scores for math', description: 'Leverage reinvent next-generation initiatives eyeballs social communities turn-key integrate, integrate seize collaborative platforms blogging sexy, e-services, infomediaries. Architect; one-to-one peer-to-peer reinvent seamless markets integrate frictionless: enhance, communities impactful blogging engage strategize empower e-tailers markets portals synergize virtual e-tailers; technologies back-end frictionless. Life-hacks ', fiscalyear: 2016},
          { name:  'End smog issue in KL', description: 'Blogging transparent enterprise exploit frictionless virtual interfaces harness--web-enabled innovative infrastructures A-list repurpose turn-key Cluetrain, value dynamic. Open-source, design aggregate, global weblogs; wikis integrate blogging dynamic interactive extensible widgets, "synergies; magnetic social, revolutionize enable weblogs, channels."', fiscalyear: 2016},
          { name:  'Reduce use of automobiles', description: 'Integrated, feeds web-readiness extend dynamic. Eyeballs; e-commerce extensible synergies revolutionize e-services mindshare vertical, A-list iterate user-centred sticky solutions proactive recontextualize, peer-to-peer. Applications; seize morph utilize initiatives ecologies, vertical--architectures remix ecologies. ', fiscalyear: 2016},
          { name:  'Conserve fresh water', description: 'Solutions social solutions cutting-edge experiences aggregate; relationships applications. E-business aggregate: intuitive models interactive, social vortals synergistic target e-tailers, enhance synthesize 24/7. Architect, bricks-and-clicks, turn-key dot-com B2B action-items rss-capable, clicks-and-mortar strategize enhance cultivate generate post e-business solutions post.', fiscalyear: 2016}
      ])


identifications = Identification.create([
  {project_id: 1, need_id: 1},
  {project_id: 2, need_id: 1},
  {project_id: 3, need_id: 3},
  {project_id: 4, need_id: 3},
  {project_id: 5, need_id: 5},
  {project_id: 6, need_id: 3},
  {project_id: 7, need_id: 2},
  {project_id: 8, need_id: 1}
   ])





proposals = Proposal.create([

                        { name:  'Coastline Evaluation and Study', description: 'Webservices proactive aggregate embedded podcasting 24/7 capture distributed synergies clicks-and-mortar scalable unleash? Systems unleash sticky platforms synthesize, platforms envisioneer, relationships repurpose grow synergistic enable, transition real-time empower capture robust redefine. Portals open-source initiatives one-to-one, clicks-and-mortar ubiquitous web-readiness engage authentic intuitive: extensible compelling. Mindshare exploit architectures matrix disintermediate remix ', fiscalyear: 2016},
                        { name:  'Mathletes Program for High School', description: 'Leverage reinvent next-generation initiatives eyeballs social communities turn-key integrate, integrate seize collaborative platforms blogging sexy, e-services, infomediaries. Architect; one-to-one peer-to-peer reinvent seamless markets integrate frictionless: enhance, communities impactful blogging engage strategize empower e-tailers markets portals synergize virtual e-tailers; technologies back-end frictionless. Life-hacks ', fiscalyear: 2016},
                        { name:  'Fire fighting equipment to Indonesia', description: 'Blogging transparent enterprise exploit frictionless virtual interfaces harness--web-enabled innovative infrastructures A-list repurpose turn-key Cluetrain, value dynamic. Open-source, design aggregate, global weblogs; wikis integrate blogging dynamic interactive extensible widgets, "synergies; magnetic social, revolutionize enable weblogs, channels."', fiscalyear: 2016},
                        { name:  'Stricter emissions control', description: 'Integrated, feeds web-readiness extend dynamic. Eyeballs; e-commerce extensible synergies revolutionize e-services mindshare vertical, A-list iterate user-centred sticky solutions proactive recontextualize, peer-to-peer. Applications; seize morph utilize initiatives ecologies, vertical--architectures remix ecologies. ', fiscalyear: 2016},
                        { name:  'Resevior upgrade project', description: 'Solutions social solutions cutting-edge experiences aggregate; relationships applications. E-business aggregate: intuitive models interactive, social vortals synergistic target e-tailers, enhance synthesize 24/7. Architect, bricks-and-clicks, turn-key dot-com B2B action-items rss-capable, clicks-and-mortar strategize enhance cultivate generate post e-business solutions post.', fiscalyear: 2016}
                    ])


possibilities = Possibility.create([
                                            {proposal_id: 1, need_id: 1},
                                            {proposal_id: 2, need_id: 1},
                                            {proposal_id: 3, need_id: 3},
                                            {proposal_id: 4, need_id: 3},
                                            {proposal_id: 5, need_id: 5},
                                            {proposal_id: 6, need_id: 3},
                                            {proposal_id: 7, need_id: 2},
                                            {proposal_id: 8, need_id: 1}
                                        ])




studies = Study.create([

    { name:  'Analysis and Study',
      proposal_id: 1,
      problem: 'Podcasting infomediaries, "sexy, monetize vertical strategize strategic implement eyeballs share frictionless blogging networks open-source integrate vortals exploit generate."  best-of-breed niches, synthesize best-of-breed; clicks-and-mortar communities communities design." Web-enabled maximize; proactive.',
      current: 'User-centric synergize, revolutionary; enterprise enterprise seize, portals harness synergistic generate cross-platform: generate enable infrastructures empower enhance, social. Paradigms generate facilitate visualize aggregate infomediaries e-business infrastructures rich." Podcasts syndicate platforms embrace; widgets repurpose B2B out-of-the-box applications initiatives, methodologies unleash aggregate." Maximize e-business, "engage transition incubate portals; bleeding-edge reintermediate communities webservices best-of-breed niches, synthesize best-of-breed; clicks-and-mortar communities communities design." Web-enabled maximize; proactive.',
      challenges: 'Peer-to-peer compelling enable Cluetrain, reinvent morph, life-hacks ubiquitous solutions aggregate 24/365 initiatives, frictionless relationships weblogs infrastructures. Beta-test robust: sexy aggregate embrace markets deploy extend intuitive A-list interfaces frictionless reinvent transform; disintermediate relationships world-class extend web-enabled e-business unleash. Sexy data-driven value sexy incubate e-services Cluetrain engage content seamless.',
      interventions: 'Bandwidth, "embrace podcasts cross-platform extend," e-services. Dynamic redefine brand recontextualize harness granular aggregate enhance, leading-edge relationships experiences turn-key target." Podcasts integrate, solutions incentivize supply-chains revolutionize folksonomies, customized. Empower beta-test viral.',
      economic: 'Deliverables innovate methodologies embedded bandwidth scale. Transparent streamline real-time transition extensible share clicks-and-mortar e-services communities addelivery. User-contributed implement bandwidth podcasting integrated. Transform, "grow," portals web-enabled partnerships e-tailers collaborative streamline integrate, "capture syndicate semantic intuitive networks plug-and-play experiences orchestrate networks, enhance killer, deploy." Peer-to-peer--schemas initiatives reinvent web-readiness web-enabled blogging B2B, killer collaborative user-centric, "value-added tagclouds enable, repurpose e-services enterprise leading-edge extensible; incubate," syndicate transition viral social, relationships, matrix enable enterprise. Strategize robust holistic, exploit redefine cultivate semantic social applications remix morph webservices: generate paradigms sticky facilitate technologies.',
      social: 'Mashups mission-critical facilitate dynamic rich monetize deploy semantic monetize create convergence mesh. Front-end seamless user-contributed exploit maximize, dot-com robust communities, Cluetrain B2B, "holistic web-enabled action-items peer-to-peer networks, unleash," integrate. E-tailers repurpose envisioneer drive, best-of-breed, feeds turn-key plug-and-play platforms holistic e-services systems; webservices capture facilitate proactive models, redefine e-commerce tagclouds methodologies. Productize citizen-media ecologies applications holistic seamless mission-critical; empower systems applications.',
      environmental: 'Virtual cross-media networkeffects strategic, infrastructures e-enable generate weblogs synergize implement mesh. Empower synergistic mesh incentivize blogging citizen-media users leading-edge evolve relationships orchestrate; reinvent. Ubiquitous social addelivery out-of-the-box strategize e-enable repurpose incentivize channels value-added engineer engineer mesh harness morph innovate!',
      financial: 'Partnerships ROI exploit facilitate engineer: seize cross-platform collaborative vortals scale tagclouds rss-capable; whiteboard end-to-end extend users. Web services recontextualize, rich-clientAPIs create engage share customized Cluetrain podcasts bleeding-edge, mashups initiatives enable, drive extensible, revolutionary, vortals proactive applications. Syndicate mindshare podcasting harness innovative, expedite harness B2B e-business rich. Frictionless evolve scale wireless synergies webservices e-markets remix, bleeding-edge, proactive, beta-test, deliverables: integrated holistic frictionless open-source. Aggregate, "harness productize repurpose," holistic, weblogs dynamic visualize exploit, utilize. Dynamic reinvent viral platforms mindshare standards-compliant capture embedded one-to-one aggregate! A-list drive visionary innovate sticky best-of-breed schemas social niches evolve customized magnetic viral synergistic eyeballs best-of-breed scalable scalable world-class architectures? Systems social integrate, "unleash communities, killer," leverage distributed.',
      other: 'Models, blogospheres infomediaries; ROI seize, architectures; revolutionize mindshare. Vertical deliverables 24/365; unleash architectures deliver dynamic benchmark, platforms viral e-tailers, "platforms productize integrate viral, generate."',
      recommendations: 'Distributed B2B B2C holistic; design next-generation; transparent partnerships B2B target facilitate end-to-end ecologies whiteboard maximize one-to-one mesh matrix. Rss-capable extensible reintermediate envisioneer seamless capture e-business wireless reinvent web services, "metrics wikis long-tail." Wikis visualize maximize frictionless deploy, communities peer-to-peer web-readiness, data-driven grow, share scale, disintermediate engineer. End-to-end robust strategize synergistic: e-business content platforms magnetic enable out-of-the-box benchmark e-markets whiteboard beta-test--utilize unleash.'},

    { name:  'Feasability Study',
    proposal_id: 2,
    problem: 'Models, blogospheres infomediaries; ROI seize, architectures; revolutionize mindshare. Vertical deliverables 24/365; unleash architectures deliver dynamic benchmark, platforms viral e-tailers, "platforms productize integrate viral, generate."',
    current: 'B2B communities expedite harness e-tailers eyeballs synthesize, generate viral mashups wikis communities, cultivate collaborative, addelivery ecologies syndicate e-tailers strategize B2C exploit? Create citizen-media, incentivize metrics e-commerce engage synergize benchmark revolutionize architectures back-end? Enable interfaces impactful impactful; visualize functionalities strategic morph bandwidth, seamless vortals deliverables post technologies user-centric e-business dynamic technologies peer-to-peer--next-generation strategic solutions. Transform maximize, compelling, clicks-and-mortar, front-end cross-media turn-key feeds e-services B2C communities--addelivery niches integrateAJAX-enabled eyeballs. Morph addelivery reintermediate initiatives technologies disintermediate magnetic real-time best-of-breed benchmark share brand semantic synergize ubiquitous. E-commerce robust metrics blogging design deploy: synthesize, 24/7 podcasts A-list. Action-items visionary harness syndicate extensible plug-and-play granular end-to-end infrastructures cultivate, expedite, intuitive open-source web-enabled relationships. Proactive dynamic schemas distributed channels streamline feeds drive podcasting citizen-media syndicate user-contributed envisioneer evolve, embedded viral. Infomediaries integrated technologies Cluetrain capture recontextualize synthesize incentivize tag unleash revolutionize streamline? Platforms web services blogging, leverage expedite functionalities scalable metrics citizen-media intuitive portals solutions unleash strategic eyeballs cross-media channels sexy syndicate? Repurpose rss-capable networking e-enable interfaces integrate 24/7, capture life-hacks vertical platforms monetize, seize synergies. Enhance e-business post portals engage, open-source virtual syndicate innovate unleash robust, eyeballs; long-tail. Remix reintermediate efficient benchmark, "holistic synthesize podcasts next-generation peer-to-peer facilitate ROI infrastructures disintermediate: syndicate e-business."',
    challenges: 'Dot-com, "blogging content create podcasts, collaborative cross-media; functionalities syndicate." Networkeffects cross-media one-to-one, user-centric vertical facilitate disintermediate harness enterprise B2C networks holistic. Functionalities partnerships envisioneer maximize best-of-breed integrate customized enhance; back-end mission-critical intuitive repurpose aggregate orchestrate monetize collaborative strategic integrate virtual--open-source generate. Value networkeffects functionalities engage wikis users magnetic 24/365 interactive tag social expedite rss-capable. Drive front-end initiatives. Extensible open-source blogospheres post Cluetrain, implement post brand 24/7 facilitate ubiquitous, empower functionalities networkeffects, mesh deliverables user-contributed enable methodologies. Semantic ubiquitous, "envisioneer mesh," blogging rss-capable e-enable addelivery integrate evolve extensible: impactful open-source syndicate, compelling. Syndicate, methodologies mission-critical benchmark networks ROI grow recontextualize; beta-test technologies innovate user-contributed cross-platform deliver, partnerships value.',
    interventions: 'Eyeballs transform ubiquitous create. E-tailers: visionary, "dynamic, seamless, transform reinvent convergence e-enable integrated experiences harness; beta-test expedite customized unleash next-generation user-contributed folksonomies Cluetrain platforms global dynamic applications interfaces."',
    economic: 'Podcasting infomediaries, "sexy, monetize vertical strategize strategic implement eyeballs share frictionless blogging networks open-source integrate vortals exploit generate." Embrace, rich-clientAPIs post interactive granular 24/365 integrate; user-centred vortals remix wireless back-end extend magnetic rich-clientAPIs channels communities.',
    social: 'Reintermediate next-generation bleeding-edge utilize disintermediate evolve mashups e-business value-added scalable engage; markets? Supply-chains best-of-breed, 24/365 deliverables evolve real-time life-hacks exploit authentic orchestrate empower. 24/365 e-enable matrix, value niches productize, reintermediate 24/365, extensible experiences applications eyeballs impactful; initiatives architectures wikis.',
    environmental: 'E-tailers incentivize, social synergize, empower, innovative: addelivery mindshare, feeds distributed leverage productize. Viral supply-chains--streamline communities dot-com customized paradigms: leading-edge markets ecologies citizen-media wireless embedded. Relationships transparent transform world-class engage rss-capable morph peer-to-peer design holistic, communities optimize global convergence facilitate, schemas supply-chains 24/365 target. Out-of-the-box sexy morph, enable, syndicate authentic repurpose. Proactive create e-enable, addelivery infomediaries vortals synergistic long-tail best-of-breed, applications aggregate plug-and-play. Next-generation user-centric integrateAJAX-enabled efficient paradigms seize folksonomies. Disintermediate, communities metrics drive monetize generate vertical cross-platform rss-capable cutting-edge. Monetize envisioneer enable blogospheres incentivize disintermediate world-class data-driven 24/7 leading-edge. Leverage harness morph; convergence, utilize paradigms leading-edge? E-services efficient infomediaries, web-enabled incubate world-class reinvent morph web-readiness, bleeding-edge partnerships deliver.',
    financial: 'Open-source post enhance world-class interactive long-tail blogospheres cross-platform visionary end-to-end! Enhance, B2B, "open-source optimize, cross-media end-to-end networking, supply-chains vortals syndicate Cluetrain, infrastructures platforms." Interfaces recontextualize transition technologies e-commerce monetize clicks-and-mortar productize e-commerce, exploit transform maximize strategic, harness; engineer; syndicate interfaces leading-edge podcasting blogospheres." Dynamic e-enable target seize tagclouds networking, "mashups streamline syndicate." Content productize out-of-the-box, integrate leading-edge productize end-to-end communities scalable viral orchestrate architectures design, cross-platform empower rss-capable global dynamic. Vertical reinvent technologies open-source methodologies disintermediate niches dynamic design infomediaries syndicate wikis one-to-one holistic morph rss-capable leverage content. Empower synergistic mesh, viral.',
    other: 'Monetize disintermediate share share integrate exploit, engineer, e-business optimize, value-added. Back-end unleash end-to-end, proactive bricks-and-clicks eyeballs synergistic open-source deliverables orchestrate experiences disintermediate one-to-one: weblogs, impactful synergies e-business enable infomediaries mesh. Capture integrate reintermediate architectures convergence life-hacks markets markets back-end tag. Optimize channels engage vertical cultivate; enterprise, matrix value-added share technologies platforms killer transparent incentivize, impactful social harness. Wikis, networks, vortals, leverage next-generation: vertical customized; synergies grow, 24/365 initiatives, aggregate action-items out-of-the-box, rich-clientAPIs incubate turn-key one-to-one matrix embedded communities? Models models clicks-and-mortar; e-business. Envisioneer syndicate rich rich relationships communities, plug-and-play enterprise cross-platform convergence, post A-list. Blogging disintermediate, folksonomies productize killer platforms, technologies data-driven e-commerce: data-driven enterprise disintermediate, addelivery; syndicate e-services metrics. Semantic blogging aggregate networking, solutions robust magnetic intuitive e-enable. Long-tail design end-to-end proactive applications reinvent. Enterprise distributed innovate visionary web services tag whiteboard e-commerce intuitive, implement networking open-source harness recontextualize. Embrace create, engage platforms design brand; paradigms target one-to-one, exploit B2C bricks-and-clicks data-driven initiatives aggregate, killer harness. Grow web services.',
    recommendations: 'Orchestrate architect, "recontextualize transform, post facilitate enterprise architectures markets seize." IntegrateAJAX-enabled engage, efficient metrics streamline folksonomies viral--standards-compliant efficient ubiquitous transition widgets, empower frictionless virtual. Transform virtual target visionary seize visualize synergies streamline open-source mashups architect visionary. Clicks-and-mortar bandwidth, recontextualize user-centric innovative, target, embedded empower real-time--share platforms e-business, "mesh robust e-business." Integrate, value-added platforms mindshare, capture sticky user-centred bleeding-edge ROI monetize addelivery blogospheres e-business folksonomies. Ecologies. Innovate transform strategic, clicks-and-mortar beta-test social web-enabled experiences folksonomies addelivery killer standards-compliant dynamic architectures enterprise feeds.'}
])

policies = Policy.create ([

       { name:  'Environmental Impact Requirement',
         effective_date: DateTime.new(2010,8,1,8),
         expire_date: DateTime.new(1999,8,1,8),
         reference: 'REF-010-POLICY-A',
         description: 'User-centric synergize, revolutionary; enterprise enterprise seize, portals harness synergistic generate cross-platform: generate enable infrastructures empower enhance, social. Paradigms generate facilitate visualize aggregate infomediaries e-business infrastructures rich." Podcasts syndicate platforms embrace; widgets repurpose B2B out-of-the-box applications initiatives, methodologies unleash aggregate." Maximize e-business, "engage transition incubate portals; bleeding-edge reintermediate communities webservices best-of-breed niches, synthesize best-of-breed; clicks-and-mortar communities communities design." Web-enabled maximize; proactive.'
        },
       { name:  'Local Construction Firm Advantage',
         effective_date: DateTime.new(2000,8,1,8),
         expire_date: DateTime.new(2001,8,1,8),
         reference: 'REF-CTC-POLICY-B',
         description: 'Orchestrate architect, "recontextualize transform, post facilitate enterprise architectures markets seize." IntegrateAJAX-enabled engage, efficient metrics streamline folksonomies viral--standards-compliant efficient ubiquitous transition widgets, empower frictionless virtual. Transform virtual target visionary seize visualize synergies streamline open-source mashups architect visionary. Clicks-and-mortar bandwidth, recontextualize user-centric innovative, target, embedded empower real-time--share platforms e-business, "mesh robust e-business." Integrate, value-added platforms mindshare, capture sticky user-centred bleeding-edge ROI monetize addelivery blogospheres e-business folksonomies. Ecologies. Innovate transform strategic, clicks-and-mortar beta-test social web-enabled experiences folksonomies addelivery killer standards-compliant dynamic architectures enterprise feeds.'
        },
        { name:  'Security Concerns for IT Projects',
          effective_date: DateTime.new(2000,8,1,8),
          expire_date: DateTime.new(2001,8,1,8),
          reference: 'REF-IT-POLICY-B',
          description: 'Reintermediate next-generation bleeding-edge utilize disintermediate evolve mashups e-business value-added scalable engage; markets? Supply-chains best-of-breed, 24/365 deliverables evolve real-time life-hacks exploit authentic orchestrate empower. 24/365 e-enable matrix, value niches productize, reintermediate 24/365, extensible experiences applications eyeballs impactful; initiatives architectures wikis.'
       }
         ])