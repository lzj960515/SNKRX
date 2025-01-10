require 'engine'
require 'shared'
require 'arena'
require 'mainmenu'
require 'buy_screen'
require 'objects'
require 'player'
require 'enemies'
require 'media'


function init()
  shared_init()

  input:bind('move_left', {'a', 'left', 'dpleft', 'm1'})
  input:bind('move_right', {'d', 'e', 's', 'right', 'dpright', 'm2'})
  input:bind('enter', {'space', 'return', 'fleft', 'fdown', 'fright'})

  local s = {tags = {sfx}}
  artificer1 = Sound('458586__inspectorj__ui-mechanical-notification-01-fx.ogg', s)
  explosion1 = Sound('Explosion Grenade_04.ogg', s)
  mine1 = Sound('Weapon Swap 2.ogg', s)
  level_up1 = Sound('Buff 4.ogg', s)
  unlock1 = Sound('Unlock 3.ogg', s)
  gambler1 = Sound('Collect 5.ogg', s)
  usurer1 = Sound('Shadow Punch 2.ogg', s)
  orb1 = Sound('Collect 2.ogg', s)
  gold1 = Sound('Collect 5.ogg', s)
  gold2 = Sound('Coins - Gears - Slot.ogg', s)
  psychic1 = Sound('Magical Impact 13.ogg', s)
  fire1 = Sound('Fire bolt 3.ogg', s)
  fire2 = Sound('Fire bolt 5.ogg', s)
  fire3 = Sound('Fire bolt 10.ogg', s)
  earth1 = Sound('Earth Bolt 1.ogg', s)
  earth2 = Sound('Earth Bolt 14.ogg', s)
  earth3 = Sound('Earth Bolt 20.ogg', s)
  illusion1 = Sound('Buff 5.ogg', s)
  thunder1 = Sound('399656__bajko__sfx-thunder-blast.ogg', s)
  flagellant1 = Sound('Whipping Horse 3.ogg', s)
  bard2 = Sound('376532__womb-affliction__flute-trill.ogg', s)
  arcane2 = Sound('Magical Impact 12.ogg', s)
  frost1 = Sound('Frost Bolt 20.ogg', s)
  arcane1 = Sound('Magical Impact 26.ogg', s)
  pyro1 = Sound('Fire bolt 5.ogg', s)
  pyro2 = Sound('Explosion Fireworks_01.ogg', s)
  dot1 = Sound('Magical Swoosh 18.ogg', s)
  gun_kata1 = Sound('Pistol Shot_07.ogg', s)
  gun_kata2 = Sound('Pistol Shot_08.ogg', s)
  dual_gunner1 = Sound('Revolver Shot_07.ogg', s)
  dual_gunner2 = Sound('Revolver Shot_08.ogg', s)
  ui_hover1 = Sound('bamboo_hit_by_lord.ogg', s)
  ui_switch1 = Sound('Switch.ogg', s)
  ui_switch2 = Sound('Switch 3.ogg', s)
  ui_transition1 = Sound('Wind Bolt 8.ogg', s)
  ui_transition2 = Sound('Wind Bolt 12.ogg', s)
  headbutt1 = Sound('Wind Bolt 14.ogg', s)
  critter1 = Sound('Critters eating 2.ogg', s)
  critter2 = Sound('Crickets Chirping 4.ogg', s)
  critter3 = Sound('Popping bloody Sac 1.ogg', s)
  force1 = Sound('Magical Impact 18.ogg', s)
  error1 = Sound('Error 2.ogg', s)
  coins1 = Sound('Coins 7.ogg', s)
  coins2 = Sound('Coins 8.ogg', s)
  coins3 = Sound('Coins 9.ogg', s)
  shoot1 = Sound('Shooting Projectile (Classic) 11.ogg', s)
  archer1 = Sound('Releasing Bow String 1.ogg', s)
  wizard1 = Sound('Wind Bolt 20.ogg', s)
  swordsman1 = Sound('Heavy sword woosh 1.ogg', s)
  swordsman2 = Sound('Heavy sword woosh 19.ogg', s)
  scout1 = Sound('Throwing Knife (Thrown) 3.ogg', s)
  scout2 = Sound('Throwing Knife (Thrown) 4.ogg', s)
  arrow_hit_wall1 = Sound('Arrow Impact wood 3.ogg', s)
  arrow_hit_wall2 = Sound('Arrow Impact wood 1.ogg', s)
  hit1 = Sound('Player Takes Damage 17.ogg', s)
  hit2 = Sound('Body Head (Headshot) 1.ogg', s)
  hit3 = Sound('Kick 16_1.ogg', s)
  hit4 = Sound('Kick 16_2.ogg', s)
  proj_hit_wall1 = Sound('Player Takes Damage 2.ogg', s)
  enemy_die1 = Sound('Bloody punches 7.ogg', s)
  enemy_die2 = Sound('Bloody punches 10.ogg', s)
  magic_area1 = Sound('Fire bolt 10.ogg', s)
  magic_hit1 = Sound('Shadow Punch 1.ogg', s)
  magic_die1 = Sound('Magical Impact 27.ogg', s)
  knife_hit_wall1 = Sound('Shield Impacts Sword 1.ogg', s)
  blade_hit1 = Sound('Sword impact (Flesh) 2.ogg', s)
  player_hit1 = Sound('Body Fall 2.ogg', s)
  player_hit2 = Sound('Body Fall 18.ogg', s)
  player_hit_wall1 = Sound('Wood Heavy 5.ogg', s)
  pop1 = Sound('Pop sounds 10.ogg', s)
  pop2 = Sound('467951__benzix2__ui-button-click.ogg', s)
  pop3 = Sound('258269__jcallison__mouth-pop.ogg', s)
  confirm1 = Sound('80921__justinbw__buttonchime02up.ogg', s)
  heal1 = Sound('Buff 3.ogg', s)
  spawn1 = Sound('Buff 13.ogg', s)
  buff1 = Sound('Buff 14.ogg', s)
  spawn_mark1 = Sound('Bonus 2.ogg', s)
  spawn_mark2 = Sound('Bonus.ogg', s)
  alert1 = Sound('Click.ogg', s)
  elementor1 = Sound('Wind Bolt 18.ogg', s)
  saboteur_hit1 = Sound('Explosion Flesh_01.ogg', s)
  saboteur_hit2 = Sound('Explosion Flesh_02.ogg', s)
  saboteur1 = Sound('Male Jump 1.ogg', s)
  saboteur2 = Sound('Male Jump 2.ogg', s)
  saboteur3 = Sound('Male Jump 3.ogg', s)
  spark1 = Sound('Spark 1.ogg', s)
  spark2 = Sound('Spark 2.ogg', s)
  spark3 = Sound('Spark 3.ogg', s)
  stormweaver1 = Sound('Buff 8.ogg', s)
  cannoneer1 = Sound('Cannon shots 1.ogg', s)
  cannoneer2 = Sound('Cannon shots 7.ogg', s)
  cannon_hit_wall1 = Sound('Cannon impact sounds (Hitting ship) 4.ogg', s)
  pet1 = Sound('Wolf barks 5.ogg', s)
  turret1 = Sound('Sci Fi Machine Gun 7.ogg', s)
  turret2 = Sound('Sniper Shot_09.ogg', s)
  turret_hit_wall1 = Sound('Concrete 6.ogg', s)
  turret_hit_wall2 = Sound('Concrete 7.ogg', s)
  turret_deploy = Sound('321215__hybrid-v__sci-fi-weapons-deploy.ogg', s)
  rogue_crit1 = Sound('Dagger Stab (Flesh) 4.ogg', s)
  rogue_crit2 = Sound('Sword hits another sword 6.ogg', s)

  song1 = Sound('Kubbi - Ember - 01 Pathfinder.ogg', {tags = {music}})
  song2 = Sound('Kubbi - Ember - 02 Ember.ogg', {tags = {music}})
  song3 = Sound('Kubbi - Ember - 03 Firelight.ogg', {tags = {music}})
  song4 = Sound('Kubbi - Ember - 04 Cascade.ogg', {tags = {music}})
  song5 = Sound('Kubbi - Ember - 05 Compass.ogg', {tags = {music}})
  death_song = Sound('Kubbi - Ember - 09 Formed by Glaciers.ogg', {tags = {music}})

  lock_image = Image('lock')
  speed_booster_elite = Image('speed_booster_elite')
  exploder_elite = Image('exploder_elite')
  swarmer_elite = Image('swarmer_elite')
  forcer_elite = Image('forcer_elite')
  cluster_elite = Image('cluster_elite')
  warrior = Image('warrior')
  ranger = Image('ranger')
  healer = Image('healer')
  mage = Image('mage')
  rogue = Image('rogue')
  nuker = Image('nuker')
  conjurer = Image('conjurer')
  enchanter = Image('enchanter')
  psyker = Image('psyker')
  curser = Image('curser')
  forcer = Image('forcer')
  swarmer = Image('swarmer')
  voider = Image('voider')
  sorcerer = Image('sorcerer')
  mercenary = Image('mercenary')
  explorer = Image('explorer')
  star = Image('star')
  arrow = Image('arrow')
  centipede = Image('centipede')
  ouroboros_technique_r = Image('ouroboros_technique_r')
  ouroboros_technique_l = Image('ouroboros_technique_l')
  amplify = Image('amplify')
  resonance = Image('resonance')
  ballista = Image('ballista')
  call_of_the_void = Image('call_of_the_void')
  crucio = Image('crucio')
  speed_3 = Image('speed_3')
  damage_4 = Image('damage_4')
  shoot_5 = Image('shoot_5')
  death_6 = Image('death_6')
  lasting_7 = Image('lasting_7')
  defensive_stance = Image('defensive_stance')
  offensive_stance = Image('offensive_stance')
  kinetic_bomb = Image('kinetic_bomb')
  porcupine_technique = Image('porcupine_technique')
  last_stand = Image('last_stand')
  seeping = Image('seeping')
  deceleration = Image('deceleration')
  annihilation = Image('annihilation')
  malediction = Image('malediction')
  hextouch = Image('hextouch')
  whispers_of_doom = Image('whispers_of_doom')
  tremor = Image('tremor')
  heavy_impact = Image('heavy_impact')
  fracture = Image('fracture')
  meat_shield = Image('meat_shield')
  hive = Image('hive')
  baneling_burst = Image('baneling_burst')
  blunt_arrow = Image('blunt_arrow')
  explosive_arrow = Image('explosive_arrow')
  divine_machine_arrow = Image('divine_machine_arrow')
  chronomancy = Image('chronomancy')
  awakening = Image('awakening')
  divine_punishment = Image('divine_punishment')
  assassination = Image('assassination')
  flying_daggers = Image('flying_daggers')
  ultimatum = Image('ultimatum')
  magnify = Image('magnify')
  echo_barrage = Image('echo_barrage')
  unleash = Image('unleash')
  reinforce = Image('reinforce')
  payback = Image('payback')
  enchanted = Image('enchanted')
  freezing_field = Image('freezing_field')
  burning_field = Image('burning_field')
  gravity_field = Image('gravity_field')
  magnetism = Image('magnetism')
  insurance = Image('insurance')
  dividends = Image('dividends')
  berserking = Image('berserking')
  unwavering_stance = Image('unwavering_stance')
  unrelenting_stance = Image('unrelenting_stance')
  blessing = Image('blessing')
  haste = Image('haste')
  divine_barrage = Image('divine_barrage')
  orbitism = Image('orbitism')
  psyker_orbs = Image('psyker_orbs')
  psychosense = Image('psychosense')
  psychosink = Image('psychosink')
  rearm = Image('rearm')
  taunt = Image('taunt')
  construct_instability = Image('construct_instability')
  intimidation = Image('intimidation')
  vulnerability = Image('vulnerability')
  temporal_chains = Image('temporal_chains')
  ceremonial_dagger = Image('ceremonial_dagger')
  homing_barrage = Image('homing_barrage')
  critical_strike = Image('critical_strike')
  noxious_strike = Image('noxious_strike')
  infesting_strike = Image('infesting_strike')
  kinetic_strike = Image('kinetic_strike')
  burning_strike = Image('burning_strike')
  lucky_strike = Image('lucky_strike')
  healing_strike = Image('healing_strike')
  stunning_strike = Image('stunning_strike')
  silencing_strike = Image('silencing_strike')
  warping_shots = Image('warping_shots')
  culling_strike = Image('culling_strike')
  lightning_strike = Image('lightning_strike')
  psycholeak = Image('psycholeak')
  divine_blessing = Image('divine_blessing')
  hardening = Image('hardening')

  class_colors = {
    ['warrior'] = yellow[0],
    ['ranger'] = green[0],
    ['healer'] = green[0],
    ['conjurer'] = orange[0],
    ['mage'] = blue[0],
    ['nuker'] = red[0],
    ['rogue'] = red[0],
    ['enchanter'] = blue[0],
    ['psyker'] = fg[0],
    ['curser'] = purple[0],
    ['forcer'] = yellow[0],
    ['swarmer'] = orange[0],
    ['voider'] = purple[0],
    ['sorcerer'] = blue2[0],
    ['mercenary'] = yellow2[0],
    ['explorer'] = fg[0],
  }

  class_color_strings = {
    ['warrior'] = 'yellow',
    ['ranger'] = 'green',
    ['healer'] = 'green',
    ['conjurer'] = 'orange',
    ['mage'] = 'blue',
    ['nuker'] = 'red',
    ['rogue'] = 'red',
    ['enchanter'] = 'blue',
    ['psyker'] = 'fg',
    ['curser'] = 'purple',
    ['forcer'] = 'yellow',
    ['swarmer'] = 'orange',
    ['voider'] = 'purple',
    ['sorcerer'] = 'blue2',
    ['mercenary'] = 'yellow2',
    ['explorer'] = 'fg',
  }

  character_names = {
    ['vagrant'] = '流浪者',
    ['swordsman'] = '剑士',
    ['wizard'] = '巫师',
    ['magician'] = '魔术师',
    ['archer'] = '弓箭手',
    ['scout'] = '侦察兵',
    ['cleric'] = '牧师',
    ['outlaw'] = '亡命徒',
    ['blade'] = '剑客',
    ['elementor'] = '元素使',
    ['saboteur'] = '破坏者',
    ['bomber'] = '爆破手',
    ['stormweaver'] = '风暴编织者',
    ['sage'] = '贤者',
    ['squire'] = '侍从',
    ['cannoneer'] = '炮手',
    ['dual_gunner'] = '双枪手',
    ['hunter'] = '猎人',
    ['sentry'] = '哨兵',
    ['chronomancer'] = '时空法师',
    ['spellblade'] = '魔剑士',
    ['psykeeper'] = '灵能师',
    ['engineer'] = '工程师',
    ['plague_doctor'] = '瘟疫医生',
    ['barbarian'] = '野蛮人',
    ['juggernaut'] = '主宰',
    ['lich'] = '巫妖',
    ['cryomancer'] = '冰霜法师',
    ['pyromancer'] = '火焰法师',
    ['corruptor'] = '腐化者',
    ['beastmaster'] = '驯兽师',
    ['launcher'] = '发射者',
    ['jester'] = '小丑',
    ['assassin'] = '刺客',
    ['host'] = '宿主',
    ['carver'] = '雕刻者',
    ['bane'] = '祸害',
    ['psykino'] = '念力师',
    ['barrager'] = '弹幕手',
    ['highlander'] = '高地人',
    ['fairy'] = '精灵',
    ['priest'] = '祭司',
    ['infestor'] = '感染者',
    ['flagellant'] = '鞭笞者',
    ['arcanist'] = '奥术师',
    ['illusionist'] = '幻术师',
    ['artificer'] = '神器师',
    ['witch'] = '女巫',
    ['silencer'] = '沉默者',
    ['vulcanist'] = '火山术士',
    ['warden'] = '守望者',
    ['psychic'] = '超能力者',
    ['miner'] = '矿工',
    ['merchant'] = '商人',
    ['usurer'] = '高利贷者',
    ['gambler'] = '赌徒',
    ['thief'] = '盗贼',
  }

  character_colors = {
    ['vagrant'] = fg[0],
    ['swordsman'] = yellow[0],
    ['wizard'] = blue[0],
    ['magician'] = blue[0],
    ['archer'] = green[0],
    ['scout'] = red[0],
    ['cleric'] = green[0],
    ['outlaw'] = red[0],
    ['blade'] = yellow[0],
    ['elementor'] = blue[0],
    ['saboteur'] = orange[0],
    ['bomber'] = orange[0],
    ['stormweaver'] = blue[0],
    ['sage'] = purple[0],
    ['squire'] = yellow[0],
    ['cannoneer'] = orange[0],
    ['dual_gunner'] = green[0],
    ['hunter'] = green[0],
    ['sentry'] = green[0],
    ['chronomancer'] = blue[0],
    ['spellblade'] = blue[0],
    ['psykeeper'] = fg[0],
    ['engineer'] = orange[0],
    ['plague_doctor'] = purple[0],
    ['barbarian'] = yellow[0],
    ['juggernaut'] = yellow[0],
    ['lich'] = blue[0],
    ['cryomancer'] = blue[0],
    ['pyromancer'] = red[0],
    ['corruptor'] = orange[0],
    ['beastmaster'] = red[0],
    ['launcher'] = yellow[0],
    ['jester'] = red[0],
    ['assassin'] = purple[0],
    ['host'] = orange[0],
    ['carver'] = green[0],
    ['bane'] = purple[0],
    ['psykino'] = fg[0],
    ['barrager'] = green[0],
    ['highlander'] = yellow[0],
    ['fairy'] = green[0],
    ['priest'] = green[0],
    ['infestor'] = orange[0],
    ['flagellant'] = fg[0],
    ['arcanist'] = blue2[0],
    ['illusionist'] = blue2[0],
    ['artificer'] = blue2[0],
    ['witch'] = purple[0],
    ['silencer'] = blue2[0],
    ['vulcanist'] = red[0],
    ['warden'] = yellow[0],
    ['psychic'] = fg[0],
    ['miner'] = yellow2[0],
    ['merchant'] = yellow2[0],
    ['usurer'] = purple[0],
    ['gambler'] = yellow2[0],
    ['thief'] = red[0],
  }

  character_color_strings = {
    ['vagrant'] = 'fg',
    ['swordsman'] = 'yellow',
    ['wizard'] = 'blue',
    ['magician'] = 'blue',
    ['archer'] = 'green',
    ['scout'] = 'red',
    ['cleric'] = 'green',
    ['outlaw'] = 'red',
    ['blade'] = 'yellow',
    ['elementor'] = 'blue',
    ['saboteur'] = 'orange',
    ['bomber'] = 'orange',
    ['stormweaver'] = 'blue',
    ['sage'] = 'purple',
    ['squire'] = 'yellow',
    ['cannoneer'] = 'orange',
    ['dual_gunner'] = 'green',
    ['hunter'] = 'green',
    ['sentry'] = 'green',
    ['chronomancer'] = 'blue',
    ['spellblade'] = 'blue',
    ['psykeeper'] = 'fg',
    ['engineer'] = 'orange',
    ['plague_doctor'] = 'purple',
    ['barbarian'] = 'yellow',
    ['juggernaut'] = 'yellow',
    ['lich'] = 'blue',
    ['cryomancer'] = 'blue',
    ['pyromancer'] = 'red',
    ['corruptor'] = 'orange',
    ['beastmaster'] = 'red',
    ['launcher'] = 'yellow',
    ['jester'] = 'red',
    ['assassin'] = 'purple',
    ['host'] = 'orange',
    ['carver'] = 'green',
    ['bane'] = 'purple',
    ['psykino'] = 'fg',
    ['barrager'] = 'green',
    ['highlander'] = 'yellow',
    ['fairy'] = 'green',
    ['priest'] = 'green',
    ['infestor'] = 'orange',
    ['flagellant'] = 'fg',
    ['arcanist'] = 'blue2',
    ['illusionist'] = 'blue2',
    ['artificer'] = 'blue2',
    ['witch'] = 'purple',
    ['silencer'] = 'blue2',
    ['vulcanist'] = 'red',
    ['warden'] = 'yellow',
    ['psychic'] = 'fg',
    ['miner'] = 'yellow2',
    ['merchant'] = 'yellow2',
    ['usurer'] = 'purple',
    ['gambler'] = 'yellow2',
    ['thief'] = 'red',
  }

  character_classes = {
    ['vagrant'] = {'explorer', 'psyker'},
    ['swordsman'] = {'warrior'},
    ['wizard'] = {'mage', 'nuker'},
    ['magician'] = {'mage'},
    ['archer'] = {'ranger'},
    ['scout'] = {'rogue'},
    ['cleric'] = {'healer'},
    ['outlaw'] = {'warrior', 'rogue'},
    ['blade'] = {'warrior', 'nuker'},
    ['elementor'] = {'mage', 'nuker'},
    -- ['saboteur'] = {'rogue', 'conjurer', 'nuker'},
    ['bomber'] = {'nuker', 'conjurer'},
    ['stormweaver'] = {'enchanter'},
    ['sage'] = {'nuker', 'forcer'},
    ['squire'] = {'warrior', 'enchanter'},
    ['cannoneer'] = {'ranger', 'nuker'},
    ['dual_gunner'] = {'ranger', 'rogue'},
    -- ['hunter'] = {'ranger', 'conjurer', 'forcer'},
    ['sentry'] = {'ranger', 'conjurer'},
    ['chronomancer'] = {'mage', 'enchanter'},
    ['spellblade'] = {'mage', 'rogue'},
    ['psykeeper'] = {'healer', 'psyker'},
    ['engineer'] = {'conjurer'},
    ['plague_doctor'] = {'nuker', 'voider'},
    ['barbarian'] = {'curser', 'warrior'},
    ['juggernaut'] = {'forcer', 'warrior'},
    ['lich'] = {'mage'},
    ['cryomancer'] = {'mage', 'voider'},
    ['pyromancer'] = {'mage', 'nuker', 'voider'},
    ['corruptor'] = {'ranger', 'swarmer'},
    ['beastmaster'] = {'rogue', 'swarmer'},
    ['launcher'] = {'curser', 'forcer'},
    ['jester'] = {'curser', 'rogue'},
    ['assassin'] = {'rogue', 'voider'},
    ['host'] = {'swarmer'},
    ['carver'] = {'conjurer', 'healer'},
    ['bane'] = {'curser', 'voider'},
    ['psykino'] = {'mage', 'psyker', 'forcer'},
    ['barrager'] = {'ranger', 'forcer'},
    ['highlander'] = {'warrior'},
    ['fairy'] = {'enchanter', 'healer'},
    ['priest'] = {'healer'},
    ['infestor'] = {'curser', 'swarmer'},
    ['flagellant'] = {'psyker', 'enchanter'},
    ['arcanist'] = {'sorcerer'},
    -- ['illusionist'] = {'sorcerer', 'conjurer'},
    ['artificer'] = {'sorcerer', 'conjurer'},
    ['witch'] = {'sorcerer', 'voider'},
    ['silencer'] = {'sorcerer', 'curser'},
    ['vulcanist'] = {'sorcerer', 'nuker'},
    ['warden'] = {'sorcerer', 'forcer'},
    ['psychic'] = {'sorcerer', 'psyker'},
    ['miner'] = {'mercenary'},
    ['merchant'] = {'mercenary'},
    ['usurer'] = {'curser', 'mercenary', 'voider'},
    ['gambler'] = {'mercenary', 'sorcerer'},
    ['thief'] = {'rogue', 'mercenary'},
  }

  character_class_strings = {
    ['vagrant'] = '[fg]Explorer, Psyker',
    ['swordsman'] = '[yellow]Warrior',
    ['wizard'] = '[blue]Mage, [red]Nuker',
    ['magician'] = '[blue]Mage',
    ['archer'] = '[green]Ranger',
    ['scout'] = '[red]Rogue',
    ['cleric'] = '[green]Healer',
    ['outlaw'] = '[yellow]Warrior, [red]Rogue',
    ['blade'] = '[yellow]Warrior, [red]Nuker',
    ['elementor'] = '[blue]Mage, [red]Nuker',
    -- ['saboteur'] = '[red]Rogue, [orange]Conjurer, [red]Nuker',
    ['bomber'] = '[red]Nuker, [orange]Builder',
    ['stormweaver'] = '[blue]Enchanter',
    ['sage'] = '[red]Nuker, [yellow]Forcer',
    ['squire'] = '[yellow]Warrior, [blue]Enchanter',
    ['cannoneer'] = '[green]Ranger, [red]Nuker',
    ['dual_gunner'] = '[green]Ranger, [red]Rogue',
    -- ['hunter'] = '[green]Ranger, [orange]Conjurer, [yellow]Forcer',
    ['sentry'] = '[green]Ranger, [orange]Builder',
    ['chronomancer'] = '[blue]Mage, Enchanter',
    ['spellblade'] = '[blue]Mage, [red]Rogue',
    ['psykeeper'] = '[green]Healer, [fg]Psyker',
    ['engineer'] = '[orange]Builder',
    ['plague_doctor'] = '[red]Nuker, [purple]Voider',
    ['barbarian'] = '[purple]Curser, [yellow]Warrior',
    ['juggernaut'] = '[yellow]Forcer, Warrior',
    ['lich'] = '[blue]Mage',
    ['cryomancer'] = '[blue]Mage, [purple]Voider',
    ['pyromancer'] = '[blue]Mage, [red]Nuker, [purple]Voider',
    ['corruptor'] = '[green]Ranger, [orange]Swarmer',
    ['beastmaster'] = '[red]Rogue, [orange]Swarmer',
    ['launcher'] = '[yellow]Forcer, [purple]Curser',
    ['jester'] = '[purple]Curser, [red]Rogue',
    ['assassin'] = '[red]Rogue, [purple]Voider',
    ['host'] = '[orange]Swarmer',
    ['carver'] = '[orange]Builder, [green]Healer',
    ['bane'] = '[purple]Curser, Voider',
    ['psykino'] = '[blue]Mage, [fg]Psyker, [yellow]Forcer',
    ['barrager'] = '[green]Ranger, [yellow]Forcer',
    ['highlander'] = '[yellow]Warrior',
    ['fairy'] = '[blue]Enchanter, [green]Healer',
    ['priest'] = '[green]Healer',
    ['infestor'] = '[purple]Curser, [orange]Swarmer',
    ['flagellant'] = '[fg]Psyker, [blue]Enchanter',
    ['arcanist'] = '[blue2]Sorcerer',
    -- ['illusionist'] = '[blue2]Sorcerer, [orange]Conjurer',
    ['artificer'] = '[blue2]Sorcerer, [orange]Builder',
    ['witch'] = '[blue2]Sorcerer, [purple]Voider',
    ['silencer'] = '[blue2]Sorcerer, [purple]Curser',
    ['vulcanist'] = '[blue2]Sorcerer, [red]Nuker',
    ['warden'] = '[blue2]Sorcerer, [yellow]Forcer',
    ['psychic'] = '[blue2]Sorcerer, [fg]Psyker',
    ['miner'] = '[yellow2]Mercenary',
    ['merchant'] = '[yellow2]Mercenary',
    ['usurer'] = '[purple]Curser, [yellow2]Mercenary, [purple]Voider',
    ['gambler'] = '[yellow2]Mercenary, [blue2]Sorcerer',
    ['thief'] = '[red]Rogue, [yellow2]Mercenary',
  }

  get_character_stat_string = function(character, level)
    local group = Group():set_as_physics_world(32, 0, 0, {'player', 'enemy', 'projectile', 'enemy_projectile'})
    local player = Player{group = group, leader = true, character = character, level = level, follower_index = 1}
    player:update(0)
    return '[red]HP: [red]' .. player.max_hp .. '[fg], [red]DMG: [red]' .. player.dmg .. '[fg], [green]ASPD: [green]' .. math.round(player.aspd_m, 2) .. 'x[fg], [blue]AREA: [blue]' ..
    math.round(player.area_dmg_m*player.area_size_m, 2) ..  'x[fg], [yellow]DEF: [yellow]' .. math.round(player.def, 2) .. '[fg], [green]MVSPD: [green]' .. math.round(player.v, 2) .. '[fg]'
  end

  get_character_stat = function(character, level, stat)
    local group = Group():set_as_physics_world(32, 0, 0, {'player', 'enemy', 'projectile', 'enemy_projectile'})
    local player = Player{group = group, leader = true, character = character, level = level, follower_index = 1}
    player:update(0)
    return math.round(player[stat], 2)
  end

  character_descriptions = {
    ['vagrant'] = function(lvl) return '[fg]发射一个造成[yellow]' .. get_character_stat('vagrant', lvl, 'dmg') .. '[fg]点伤害的投射物' end,
    ['swordsman'] = function(lvl) return '[fg]在范围内造成[yellow]' .. get_character_stat('swordsman', lvl, 'dmg') .. '[fg]点伤害,每击中一个单位额外造成[yellow]' ..
      math.round(get_character_stat('swordsman', lvl, 'dmg')*0.15, 2) .. '[fg]点伤害' end,
    ['wizard'] = function(lvl) return '[fg]发射一个造成[yellow]' .. get_character_stat('wizard', lvl, 'dmg') .. '范围[fg]伤害的投射物' end,
    ['magician'] = function(lvl) return '[fg]创造一个造成[yellow]' .. get_character_stat('magician', lvl, 'dmg') .. '范围[fg]伤害的小区域' end,
    ['archer'] = function(lvl) return '[fg]射出一支造成[yellow]' .. get_character_stat('archer', lvl, 'dmg') .. '[fg]点伤害并能穿透的箭' end,
    ['scout'] = function(lvl) return '[fg]投掷一把造成[yellow]' .. get_character_stat('scout', lvl, 'dmg') .. '[fg]点伤害并连锁[yellow]3[fg]次的匕首' end,
    ['cleric'] = function(lvl) return '[fg]每[yellow]8[fg]秒创造[yellow]1[fg]个治疗球' end,
    ['outlaw'] = function(lvl) return '[fg]投掷[yellow]5[fg]把匕首,每把造成[yellow]' .. get_character_stat('outlaw', lvl, 'dmg') .. '[fg]点伤害' end,
    ['blade'] = function(lvl) return '[fg]投掷多把造成[yellow]' .. get_character_stat('blade', lvl, 'dmg') .. '范围[fg]伤害的刀刃' end,
    ['elementor'] = function(lvl) return '[fg]在随机目标为中心的大范围区域内造成[yellow]' .. get_character_stat('elementor', lvl, 'dmg') .. '范围[fg]伤害' end,
    ['saboteur'] = function(lvl) return '[fg]召唤[yellow]2[fg]个破坏者寻找目标并造成[yellow]' .. get_character_stat('saboteur', lvl, 'dmg') .. '范围[fg]伤害' end,
    ['bomber'] = function(lvl) return '[fg]放置一个炸弹,爆炸时造成[yellow]' .. 2*get_character_stat('bomber', lvl, 'dmg') .. '范围[fg]伤害' end,
    ['stormweaver'] = function(lvl) return '[fg]为投射物注入闪电链,对[yellow]2[fg]个敌人造成[yellow]20%[fg]伤害' end,
    ['sage'] = function(lvl) return '[fg]发射一个能吸引敌人的缓慢投射物' end,
    ['squire'] = function(lvl) return '所有盟友获得[yellow]+20%[fg]伤害和防御' end,
    ['cannoneer'] = function(lvl) return '[fg]发射一个造成[yellow]' .. 2*get_character_stat('cannoneer', lvl, 'dmg') .. '范围[fg]伤害的投射物' end,
    ['dual_gunner'] = function(lvl) return '[fg]发射两个平行的投射物,每个造成[yellow]' .. get_character_stat('dual_gunner', lvl, 'dmg') .. '[fg]点伤害' end,
    ['hunter'] = function(lvl) return '[fg]射出一支造成[yellow]' .. get_character_stat('hunter', lvl, 'dmg') .. '[fg]点伤害的箭,有[yellow]20%[fg]几率召唤一个宠物' end,
    ['sentry'] = function(lvl) return '[fg]生成一个旋转炮塔,发射[yellow]4[fg]个投射物,每个造成[yellow]' .. get_character_stat('sentry', lvl, 'dmg') .. '[fg]点伤害' end,
    ['chronomancer'] = function(lvl) return '所有盟友获得[yellow]+20%[fg]攻击速度' end,
    ['spellblade'] = function(lvl) return '[fg]投掷造成[yellow]' .. get_character_stat('spellblade', lvl, 'dmg') .. '[fg]点伤害的匕首,能穿透并向外螺旋' end,
    ['psykeeper'] = function(lvl) return '[fg]每当灵能守护者受到最大生命值[yellow]25%[fg]的伤害时,创造[yellow]3[fg]个治疗球' end,
    ['engineer'] = function(lvl) return '[fg]放置能发射一连串投射物的炮塔,每个造成[yellow]' .. get_character_stat('engineer', lvl, 'dmg') .. '[fg]点伤害' end,
    ['plague_doctor'] = function(lvl) return '[fg]创造一个每秒造成[yellow]' .. get_character_stat('plague_doctor', lvl, 'dmg') .. '[fg]点伤害的区域' end,
    ['barbarian'] = function(lvl) return '[fg]造成[yellow]' .. get_character_stat('barbarian', lvl, 'dmg') .. '[fg]点范围伤害并使被击中的敌人眩晕[yellow]4[fg]秒' end,
    ['juggernaut'] = function(lvl) return '[fg]造成[yellow]' .. get_character_stat('juggernaut', lvl, 'dmg') .. '[fg]点范围伤害并用强大的力量推开敌人' end,
    ['lich'] = function(lvl) return '[fg]发射一个能跳跃[yellow]7[fg]次的缓慢投射物,每次击中造成[yellow]' ..  2*get_character_stat('lich', lvl, 'dmg') .. '[fg]点伤害' end,
    ['cryomancer'] = function(lvl) return '[fg]附近的敌人每秒受到[yellow]' .. get_character_stat('cryomancer', lvl, 'dmg') .. '[fg]点伤害' end,
    ['pyromancer'] = function(lvl) return '[fg]附近的敌人每秒受到[yellow]' .. get_character_stat('pyromancer', lvl, 'dmg') .. '[fg]点伤害' end,
    ['corruptor'] = function(lvl) return '[fg]射出一支造成[yellow]' .. get_character_stat('corruptor', lvl, 'dmg') .. '[fg]点伤害的箭,如果击杀目标则生成[yellow]3[fg]只小动物' end,
    ['beastmaster'] = function(lvl) return '[fg]投掷一把造成[yellow]' .. get_character_stat('beastmaster', lvl, 'dmg') .. '[fg]点伤害的匕首,暴击时生成[yellow]2[fg]只小动物' end,
    ['launcher'] = function(lvl) return '[fg]所有附近的敌人在[yellow]4[fg]秒后被推开,撞墙时受到[yellow]' .. 2*get_character_stat('launcher', lvl, 'dmg') .. '[fg]点伤害' end,
    ['jester'] = function(lvl) return "[fg]诅咒[yellow]6[fg]个附近的敌人持续[yellow]6[fg]秒,他们死亡时会爆炸成[yellow]4[fg]把匕首" end,
    ['assassin'] = function(lvl) return '[fg]投掷一把能穿透的匕首,造成[yellow]' .. get_character_stat('assassin', lvl, 'dmg') .. '[fg]点伤害外加每秒[yellow]' ..
      get_character_stat('assassin', lvl, 'dmg')/2 .. '[fg]点伤害' end,
    ['host'] = function(lvl) return '[fg]定期生成[yellow]1[fg]只小动物' end,
    ['carver'] = function(lvl) return '[fg]雕刻一个每[yellow]6[fg]秒创造[yellow]1[fg]个治疗球的雕像' end,
    ['bane'] = function(lvl) return '[fg]诅咒[yellow]6[fg]个附近的敌人持续[yellow]6[fg]秒,他们死亡时会创造小型虚空裂缝' end,
    ['psykino'] = function(lvl) return '[fg]将敌人拉到一起持续[yellow]2[fg]秒' end,
    ['barrager'] = function(lvl) return '[fg]射出[yellow]3[fg]支箭的弹幕,每支造成[yellow]' .. get_character_stat('barrager', lvl, 'dmg') .. '[fg]点伤害并推开敌人' end,
    ['highlander'] = function(lvl) return '[fg]造成[yellow]' .. 5*get_character_stat('highlander', lvl, 'dmg') .. '[fg]点范围伤害' end,
    ['fairy'] = function(lvl) return '[fg]创造[yellow]1[fg]个治疗球并使[yellow]1[fg]个单位获得[yellow]+100%[fg]攻击速度,持续[yellow]6[fg]秒' end,
    ['priest'] = function(lvl) return '[fg]每[yellow]12[fg]秒创造[yellow]3[fg]个治疗球' end,
    ['infestor'] = function(lvl) return '[fg]诅咒[yellow]8[fg]个附近的敌人持续[yellow]6[fg]秒,他们死亡时会释放[yellow]2[fg]只小动物' end,
    ['flagellant'] = function(lvl) return '[fg]对自身造成[yellow]' .. 2*get_character_stat('flagellant', lvl, 'dmg') .. '[fg]点伤害,每次施法使所有盟友获得[yellow]+4%[fg]伤害' end,
    ['arcanist'] = function(lvl) return '[fg]发射一个缓慢移动的法球,发射投射物,每个造成[yellow]' .. get_character_stat('arcanist', lvl, 'dmg') .. '[fg]点伤害' end,
    ['illusionist'] = function(lvl) return '[fg]发射一个造成[yellow]' .. get_character_stat('illusionist', lvl, 'dmg') .. '[fg]点伤害的投射物,并创造能造成相同效果的复制体' end,
    ['artificer'] = function(lvl) return '[fg]生成一个自动机器人,发射造成[yellow]' .. get_character_stat('artificer', lvl, 'dmg') .. '[fg]点伤害的投射物' end,
    ['witch'] = function(lvl) return '[fg]创造一个能弹射并每秒造成[yellow]' .. get_character_stat('witch', lvl, 'dmg') .. '[fg]点伤害的区域' end,
    ['silencer'] = function(lvl) return '[fg]诅咒[yellow]5[fg]个附近的敌人持续[yellow]6[fg]秒,阻止他们使用特殊攻击' end,
    ['vulcanist'] = function(lvl) return '[fg]创造一个火山,使附近区域爆炸[yellow]4[fg]次,每次造成[yellow]' .. get_character_stat('vulcanist', lvl, 'dmg') .. '范围[fg]伤害' end,
    ['warden'] = function(lvl) return '[fg]在随机单位周围创造一个阻止敌人进入的力场' end,
    ['psychic'] = function(lvl) return '[fg]创造一个造成[yellow]' .. get_character_stat('psychic', lvl, 'dmg') .. '范围[fg]伤害的小区域' end,
    ['miner'] = function(lvl) return '[fg]拾取金币时释放[yellow]4[fg]个追踪投射物,每个造成[yellow]' .. get_character_stat('miner', lvl, 'dmg') .. '[fg]点伤害' end,
    ['merchant'] = function(lvl) return '[fg]每[yellow]10[fg]金币获得[yellow]+1[fg]利息,商人最多提供[yellow]+10[fg]利息' end,
    ['usurer'] = function(lvl) return '[fg]永久诅咒[yellow]3[fg]个附近的敌人负债,每秒造成[yellow]' .. get_character_stat('usurer', lvl, 'dmg') .. '[fg]点伤害' end,
    ['gambler'] = function(lvl) return '[fg]对单个随机敌人造成[yellow]2X[fg]伤害,X为你拥有的金币数量' end,
    ['thief'] = function(lvl) return '[fg]投掷一把造成[yellow]' .. 2*get_character_stat('thief', lvl, 'dmg') .. '[fg]点伤害并连锁[yellow]5[fg]次的匕首' end,
  }

  character_effect_names = {
    ['vagrant'] = '[fg]Experience',
    ['swordsman'] = '[yellow]Cleave',
    ['wizard'] = '[blue]Magic Missile',
    ['magician'] = '[blue]Quick Cast',
    ['archer'] = '[green]Bounce Shot',
    ['scout'] = '[red]Dagger Resonance',
    ['cleric'] = '[green]Mass Heal',
    ['outlaw'] = '[red]Flying Daggers',
    ['blade'] = '[yellow]Blade Resonance',
    ['elementor'] = '[blue]Windfield',
    ['saboteur'] = '[orange]Demoman',
    ['bomber'] = '[orange]Demoman',
    ['stormweaver'] = '[blue]Wide Lightning',
    ['sage'] = '[purple]Dimension Compression',
    ['squire'] = '[yellow]Shiny Gear',
    ['cannoneer'] = '[orange]Cannon Barrage',
    ['dual_gunner'] = '[green]Gun Kata',
    ['hunter'] = '[green]Feral Pack',
    ['sentry'] = '[green]Sentry Barrage',
    ['chronomancer'] = '[blue]Quicken',
    ['spellblade'] = '[blue]Spiralism',
    ['psykeeper'] = '[fg]Crucio',
    ['engineer'] = '[orange]Upgrade!!!',
    ['plague_doctor'] = '[purple]Black Death Steam',
    ['barbarian'] = '[yellow]Seism',
    ['juggernaut'] = '[yellow]Brutal Impact',
    ['lich'] = '[blue]Chain Frost',
    ['cryomancer'] = '[blue]Frostbite',
    ['pyromancer'] = '[red]Ignite',
    ['corruptor'] = '[orange]Corruption',
    ['beastmaster'] = '[red]Call of the Wild',
    ['launcher'] = '[orange]Kineticism',
    ['jester'] = "[red]Pandemonium",
    ['assassin'] = '[purple]Toxic Delivery',
    ['host'] = '[orange]Invasion',
    ['carver'] = '[green]World Tree',
    ['bane'] = '[purple]Nightmare',
    ['psykino'] = '[fg]Magnetic Force',
    ['barrager'] = '[green]Barrage',
    ['highlander'] = '[yellow]Moulinet',
    ['fairy'] = '[green]Whimsy',
    ['priest'] = '[green]Divine Intervention',
    ['infestor'] = '[orange]Infestation',
    ['flagellant'] = '[red]Zealotry',
    ['arcanist'] = '[blue2]Arcane Orb',
    ['illusionist'] = '[blue2]Mirror Image',
    ['artificer'] = '[blue2]Spell Formula Efficiency',
    ['witch'] = '[purple]Death Pool',
    ['silencer'] = '[blue2]Arcane Curse',
    ['vulcanist'] = '[red]Lava Burst',
    ['warden'] = '[yellow]Magnetic Field',
    ['psychic'] = '[fg]Mental Strike',
    ['miner'] = '[yellow2]Golden Bolts',
    ['merchant'] = '[yellow2]Item Shop',
    ['usurer'] = '[purple]Bankruptcy',
    ['gambler'] = '[yellow2]Multicast',
    ['thief'] = '[red]Ultrakill',
  }

  character_effect_names_gray = {
    ['vagrant'] = '[light_bg]Experience',
    ['swordsman'] = '[light_bg]Cleave',
    ['wizard'] = '[light_bg]Magic Missile',
    ['magician'] = '[light_bg]Quick Cast',
    ['archer'] = '[light_bg]Bounce Shot',
    ['scout'] = '[light_bg]Dagger Resonance',
    ['cleric'] = '[light_bg]Mass Heal ',
    ['outlaw'] = '[light_bg]Flying Daggers',
    ['blade'] = '[light_bg]Blade Resonance',
    ['elementor'] = '[light_bg]Windfield',
    ['saboteur'] = '[light_bg]Demoman',
    ['bomber'] = '[light_bg]Demoman',
    ['stormweaver'] = '[light_bg]Wide Lightning',
    ['sage'] = '[light_bg]Dimension Compression',
    ['squire'] = '[light_bg]Shiny Gear',
    ['cannoneer'] = '[light_bg]Cannon Barrage',
    ['dual_gunner'] = '[light_bg]Gun Kata',
    ['hunter'] = '[light_bg]Feral Pack',
    ['sentry'] = '[light_bg]Sentry Barrage',
    ['chronomancer'] = '[light_bg]Quicken',
    ['spellblade'] = '[light_bg]Spiralism',
    ['psykeeper'] = '[light_bg]Crucio',
    ['engineer'] = '[light_bg]Upgrade!!!',
    ['plague_doctor'] = '[light_bg]Black Death Steam',
    ['barbarian'] = '[light_bg]Seism',
    ['juggernaut'] = '[light_bg]Brutal Impact',
    ['lich'] = '[light_bg]Chain Frost',
    ['cryomancer'] = '[light_bg]Frostbite',
    ['pyromancer'] = '[light_bg]Ignite',
    ['corruptor'] = '[light_bg]Corruption',
    ['beastmaster'] = '[light_bg]Call of the Wild',
    ['launcher'] = '[light_bg]Kineticism',
    ['jester'] = "[light_bg]Pandemonium",
    ['assassin'] = '[light_bg]Toxic Delivery',
    ['host'] = '[light_bg]Invasion',
    ['carver'] = '[light_bg]World Tree',
    ['bane'] = '[light_bg]Nightmare',
    ['psykino'] = '[light_bg]Magnetic Force',
    ['barrager'] = '[light_bg]Barrage',
    ['highlander'] = '[light_bg]Moulinet',
    ['fairy'] = '[light_bg]Whimsy',
    ['priest'] = '[light_bg]Divine Intervention',
    ['infestor'] = '[light_bg]Infestation',
    ['flagellant'] = '[light_bg]Zealotry',
    ['arcanist'] = '[light_bg]Arcane Orb',
    ['illusionist'] = '[light_bg]Mirror Image',
    ['artificer'] = '[light_bg]Spell Formula Efficiency',
    ['witch'] = '[light_bg]Death Pool',
    ['silencer'] = '[light_bg]Arcane Curse',
    ['vulcanist'] = '[light_bg]Lava Burst',
    ['warden'] = '[light_bg]Magnetic Field',
    ['psychic'] = '[light_bg]Mental Strike',
    ['miner'] = '[light_bg]Golden Bolts',
    ['merchant'] = '[light_bg]Item Shop',
    ['usurer'] = '[light_bg]Bankruptcy',
    ['gambler'] = '[light_bg]Multicast',
    ['thief'] = '[light_bg]Ultrakill',
  }

  character_effect_descriptions = {
    ['vagrant'] = function() return '[yellow]+15%[fg] 攻击速度和每个激活职业的伤害' end,
    ['swordsman'] = function() return "[fg]剑士的伤害[yellow]翻倍" end,
    ['wizard'] = function() return '[fg]弹射[yellow]2[fg]次' end,
    ['magician'] = function() return '每[yellow]12[fg]秒获得[yellow]+50%[fg]攻击速度,持续[yellow]6[fg]秒' end,
    ['archer'] = function() return '[fg]箭矢可以弹射墙壁[yellow]3[fg]次' end,
    ['scout'] = function() return '每次弹射[yellow]+25%[fg]伤害和[yellow]+3[fg]次弹射' end,
    ['cleric'] = function() return '每[yellow]8[fg]秒创造[yellow]4[fg]个治疗球' end,
    ['outlaw'] = function() return "[yellow]+50%[fg]攻击速度并且飞刀会追踪敌人" end,
    ['blade'] = function() return '[fg]每击中一个敌人造成额外[yellow]' .. math.round(get_character_stat('blade', 3, 'dmg')/3, 2) .. '[fg]伤害' end,
    ['elementor'] = function() return '[fg]命中时减缓敌人[yellow]60%[fg]移动速度,持续[yellow]6[fg]秒' end,
    ['saboteur'] = function() return '[fg]爆炸有[yellow]50%[fg]几率暴击,增加范围并造成[yellow]2倍[fg]伤害' end,
    ['bomber'] = function() return '[yellow]+100%[fg]炸弹范围和伤害' end,
    ['stormweaver'] = function() return "[fg]闪电链的触发范围和击中单位数[yellow]翻倍" end,
    ['sage'] = function() return '[fg]当弹射消失时对其影响下的所有敌人造成[yellow]' .. 3*get_character_stat('sage', 3, 'dmg') .. '[fg]伤害' end,
    ['squire'] = function() return '[yellow]+30%[fg]伤害、攻击速度、移动速度和防御力加成给所有盟友' end,
    ['cannoneer'] = function() return '[fg]在命中区域额外发射[yellow]7[fg]发炮弹,每发造成[yellow]' .. get_character_stat('cannoneer', 3, 'dmg')/2 .. '[fg]范围伤害' end,
    ['dual_gunner'] = function() return '[fg]每5次攻击会快速连射[yellow]2[fg]秒' end,
    ['hunter'] = function() return '[fg]召唤[yellow]3[fg]只宠物,宠物可以弹射墙壁一次' end,
    ['sentry'] = function() return '[yellow]+50%[fg]哨兵炮台攻击速度,弹射[yellow]两次[fg]' end,
    ['chronomancer'] = function() return '[fg]敌人受到的持续伤害速度提高[yellow]50%[fg]' end,
    ['spellblade'] = function() return '[fg]更快的弹射速度和更紧密的转向' end,
    ['psykeeper'] = function() return '[fg]对所有敌人造成精神守护者受到伤害的[yellow]两倍[fg]' end,
    ['engineer'] = function() return '[fg]额外放置[yellow]2[fg]个炮台并给所有炮台[yellow]+50%[fg]伤害和攻击速度' end,
    ['plague_doctor'] = function() return '[fg]附近的敌人每秒受到额外[yellow]' .. get_character_stat('plague_doctor', 3, 'dmg') .. '[fg]伤害' end,
    ['barbarian'] = function() return '[fg]被击晕的敌人额外受到[yellow]100%[fg]伤害' end,
    ['juggernaut'] = function() return '[fg]被巨兽推开的敌人撞墙时受到[yellow]' .. 4*get_character_stat('juggernaut', 3, 'dmg') .. '[fg]伤害' end,
    ['lich'] = function() return '[fg]霜链减缓被击中敌人[yellow]80%[fg]移动速度,持续[yellow]2[fg]秒,额外弹射[yellow]+7[fg]次' end,
    ['cryomancer'] = function() return '[fg]范围内的敌人也被减缓[yellow]60%[fg]移动速度' end,
    ['pyromancer'] = function() return '[fg]被火法师击杀的敌人爆炸,造成[yellow]' .. get_character_stat('pyromancer', 3, 'dmg') .. '[fg]范围伤害' end,
    ['corruptor'] = function() return '[fg]腐化者击中敌人时生成[yellow]2[fg]只小生物' end,
    ['beastmaster'] = function() return '[fg]驯兽师受到伤害时生成[yellow]4[fg]只小生物' end,
    ['launcher'] = function() return '[fg]被发射的敌人撞墙时受到[yellow]300%[fg]额外伤害' end,
    ['jester'] = function() return '[fg]所有飞刀追踪敌人并穿透[yellow]2[fg]次' end,
    ['assassin'] = function() return '[fg]暴击造成的中毒效果造成[yellow]8倍[fg]伤害' end,
    ['host'] = function() return '[yellow]+100%[fg]小生物生成率并生成[yellow]2[fg]只小生物' end,
    ['carver'] = function() return '[fg]创造一棵树,生成治疗球的速度[yellow]翻倍[fg]' end,
    ['bane'] = function() return "[yellow]100%[fg]增加祸根虚空裂隙的范围" end,
    ['psykino'] = function() return '[fg]区域消失时敌人受到[yellow]' .. 4*get_character_stat('psykino', 3, 'dmg') .. '[fg]伤害并被推开' end,
    ['barrager'] = function() return '[fg]每3次攻击发射[yellow]15[fg]发弹射并有更强的推力' end,
    ['highlander'] = function() return '[fg]快速重复攻击[yellow]3[fg]次' end,
    ['fairy'] = function() return '[fg]创造[yellow]2[fg]个治疗球并给予[yellow]2[fg]个单位[yellow]+100%[fg]攻击速度' end,
    ['priest'] = function() return '[fg]随机选择[yellow]3[fg]个单位并给予一次免死buff' end,
    ['infestor'] = function() return '[fg][yellow]三倍[fg]释放的小生物数量' end,
    ['flagellant'] = function() return '[yellow]2倍[fg]鞭刑者最大生命值并每次施法给所有盟友[yellow]+12%[fg]伤害' end,
    ['arcanist'] = function() return '[yellow]+50%[fg]法球攻击速度并每次施法释放[yellow]2[fg]发弹射' end,
    ['illusionist'] = function() return '[yellow]翻倍[fg]创造的分身数量,分身死亡时释放[yellow]12[fg]发弹射' end,
    ['artificer'] = function() return '[fg]自动机射击和移动速度提高50%,死亡时释放[yellow]12[fg]发弹射' end,
    ['witch'] = function() return '[fg]区域释放弹射,每发造成[yellow]' .. get_character_stat('witch', 3, 'dmg') .. '[fg]伤害并弹射一次' end,
    ['silencer'] = function() return '[fg]诅咒也每秒造成[yellow]' .. get_character_stat('silencer', 3, 'dmg') .. '[fg]伤害' end,
    ['vulcanist'] = function() return '[fg]爆炸的数量和速度[yellow]翻倍[fg]' end,
    ['warden'] = function() return '[fg]在[yellow]2[fg]个单位周围创造力场' end,
    ['psychic'] = function() return '[fg]攻击可以从任何距离发动并重复一次' end,
    ['miner'] = function() return '[fg]改为释放[yellow]8[fg]发追踪弹射并穿透两次' end,
    ['merchant'] = function() return '[fg]你的第一次物品重抽永远是免费的' end,
    ['usurer'] = function() return '[fg]如果同一个敌人被诅咒[yellow]3[fg]次,受到[yellow]' .. 10*get_character_stat('usurer', 3, 'dmg') .. '[fg]伤害' end,
    ['gambler'] = function() return '[yellow]60/40/20%[fg]几率施放[yellow]2/3/4[fg]次攻击' end,
    ['thief'] = function() return '[fg]如果飞刀暴击则造成[yellow]' .. 10*get_character_stat('thief', 3, 'dmg') .. '[fg]伤害,弹射[yellow]10[fg]次并获得[yellow]1[fg]金币' end,
  }

  character_effect_descriptions_gray = {
    ['vagrant'] = function() return '[light_bg]每个激活的职业+15%攻击速度和伤害' end,
    ['swordsman'] = function() return "[light_bg]剑士的伤害翻倍" end,
    ['wizard'] = function() return '[light_bg]弹射可以弹射3次' end,
    ['magician'] = function() return '[light_bg]每12秒获得+50%攻击速度,持续6秒' end,
    ['archer'] = function() return '[light_bg]箭矢可以弹射墙壁3次' end,
    ['scout'] = function() return '[light_bg]每次弹射+25%伤害并额外弹射3次' end,
    ['cleric'] = function() return '[light_bg]创造4个治疗球' end,
    ['outlaw'] = function() return "[light_bg]+50%攻击速度并且飞刀会追踪敌人" end,
    ['blade'] = function() return '[light_bg]每击中一个敌人造成额外' .. math.round(get_character_stat('blade', 3, 'dmg')/2, 2) .. '伤害' end,
    ['elementor'] = function() return '[light_bg]命中时减缓敌人60%移动速度,持续6秒' end,
    ['saboteur'] = function() return '[light_bg]爆炸有50%几率暴击,增加范围并造成2倍伤害' end,
    ['bomber'] = function() return '[light_bg]+100%炸弹范围和伤害' end,
    ['stormweaver'] = function() return "[light_bg]闪电链的触发范围和击中单位数翻倍" end,
    ['sage'] = function() return '[light_bg]当弹射消失时对其影响下的所有敌人造成' .. 3*get_character_stat('sage', 3, 'dmg') .. '伤害' end,
    ['squire'] = function() return '[light_bg]+30%伤害、攻击速度、移动速度和防御力加成给所有盟友' end,
    ['cannoneer'] = function() return '[light_bg]在命中区域额外发射7发炮弹,每发造成' .. get_character_stat('cannoneer', 3, 'dmg')/2 .. '范围伤害' end,
    ['dual_gunner'] = function() return '[light_bg]每5次攻击会快速连射2秒' end,
    ['hunter'] = function() return '[light_bg]召唤3只宠物,宠物可以弹射墙壁一次' end,
    ['sentry'] = function() return '[light_bg]+50%哨兵炮台攻击速度,弹射两次' end,
    ['chronomancer'] = function() return '[light_bg]敌人受到的持续伤害速度提高50%' end,
    ['spellblade'] = function() return '[light_bg]更快的弹射速度和更紧密的转向' end,
    ['psykeeper'] = function() return '[light_bg]对所有敌人造成精神守护者受到伤害的两倍' end,
    ['engineer'] = function() return '[light_bg]额外放置2个炮台并给所有炮台+50%伤害和攻击速度' end,
    ['plague_doctor'] = function() return '[light_bg]附近的敌人每秒受到额外' .. get_character_stat('plague_doctor', 3, 'dmg') .. '伤害' end,
    ['barbarian'] = function() return '[light_bg]被击晕的敌人额外受到100%伤害' end,
    ['juggernaut'] = function() return '[light_bg]被巨兽推开的敌人撞墙时受到' .. 4*get_character_stat('juggernaut', 3, 'dmg') .. '伤害' end,
    ['lich'] = function() return '[light_bg]霜链减缓被击中敌人80%移动速度,持续2秒,额外弹射+7次' end,
    ['cryomancer'] = function() return '[light_bg]范围内的敌人也被减缓60%移动速度' end,
    ['pyromancer'] = function() return '[light_bg]被火法师击杀的敌人爆炸,造成' .. get_character_stat('pyromancer', 3, 'dmg') .. '范围伤害' end,
    ['corruptor'] = function() return '[light_bg]腐化者击中敌人时生成2只小生物' end,
    ['beastmaster'] = function() return '[light_bg]驯兽师受到伤害时生成4只小生物' end,
    ['launcher'] = function() return '[light_bg]被发射的敌人撞墙时受到300%额外伤害' end,
    ['jester'] = function() return '[light_bg]诅咒6个敌人并且所有飞刀追踪敌人并穿透2次' end,
    ['assassin'] = function() return '[light_bg]暴击造成的中毒效果造成8倍伤害' end,
    ['host'] = function() return '[light_bg]+100%小生物生成率并生成2只小生物' end,
    ['carver'] = function() return '[light_bg]创造一棵树,生成治疗球的速度翻倍' end,
    ['bane'] = function() return "[light_bg]100%增加祸根虚空裂隙的范围" end,
    ['psykino'] = function() return '[light_bg]区域消失时敌人受到' .. 4*get_character_stat('psykino', 3, 'dmg') .. '伤害并被推开' end,
    ['barrager'] = function() return '[light_bg]每3次攻击发射15发弹射并有更强的推力' end,
    ['highlander'] = function() return '[light_bg]快速重复攻击3次' end,
    ['fairy'] = function() return '[light_bg]创造2个治疗球并给予2个单位+100%攻击速度' end,
    ['priest'] = function() return '[light_bg]随机选择3个单位并给予一次免死buff' end,
    ['infestor'] = function() return '[light_bg]三倍释放的小生物数量' end,
    ['flagellant'] = function() return '[light_bg]2倍鞭刑者最大生命值并每次施法给所有盟友+12%伤害' end,
    ['arcanist'] = function() return '[light_bg]+50%法球攻击速度并每次施法释放2发弹射' end,
    ['illusionist'] = function() return '[light_bg]翻倍创造的分身数量,分身死亡时释放12发弹射' end,
    ['artificer'] = function() return '[light_bg]自动机射击和移动速度提高50%,死亡时释放12发弹射' end,
    ['witch'] = function() return '[light_bg]区域释放弹射,每发造成' .. get_character_stat('witch', 3, 'dmg') .. '伤害并弹射一次' end,
    ['silencer'] = function() return '[light_bg]诅咒也每秒造成' .. get_character_stat('silencer', 3, 'dmg') .. '伤害' end,
    ['vulcanist'] = function() return '[light_bg]爆炸的数量和速度翻倍' end,
    ['warden'] = function() return '[light_bg]在2个单位周围创造力场' end,
    ['psychic'] = function() return '[light_bg]攻击可以从任何距离发动并重复一次' end,
    ['miner'] = function() return '[light_bg]改为释放8发追踪弹射并穿透两次' end,
    ['merchant'] = function() return '[light_bg]你的第一次物品重抽永远是免费的' end,
    ['usurer'] = function() return '[light_bg]如果同一个敌人被诅咒3次,受到' .. 10*get_character_stat('usurer', 3, 'dmg') .. '伤害' end,
    ['gambler'] = function() return '[light_bg]60/40/20%几率施放2/3/4次攻击' end,
    ['thief'] = function() return '[light_bg]如果飞刀暴击则造成' .. 10*get_character_stat('thief', 3, 'dmg') .. '伤害,弹射10次并获得1金币' end,
  }

  character_stats = {
    ['vagrant'] = function(lvl) return get_character_stat_string('vagrant', lvl) end,
    ['swordsman'] = function(lvl) return get_character_stat_string('swordsman', lvl) end, 
    ['wizard'] = function(lvl) return get_character_stat_string('wizard', lvl) end, 
    ['magician'] = function(lvl) return get_character_stat_string('magician', lvl) end, 
    ['archer'] = function(lvl) return get_character_stat_string('archer', lvl) end, 
    ['scout'] = function(lvl) return get_character_stat_string('scout', lvl) end, 
    ['cleric'] = function(lvl) return get_character_stat_string('cleric', lvl) end, 
    ['outlaw'] = function(lvl) return get_character_stat_string('outlaw', lvl) end, 
    ['blade'] = function(lvl) return get_character_stat_string('blade', lvl) end, 
    ['elementor'] = function(lvl) return get_character_stat_string('elementor', lvl) end, 
    ['saboteur'] = function(lvl) return get_character_stat_string('saboteur', lvl) end, 
    ['bomber'] = function(lvl) return get_character_stat_string('bomber', lvl) end, 
    ['stormweaver'] = function(lvl) return get_character_stat_string('stormweaver', lvl) end, 
    ['sage'] = function(lvl) return get_character_stat_string('sage', lvl) end, 
    ['squire'] = function(lvl) return get_character_stat_string('squire', lvl) end, 
    ['cannoneer'] = function(lvl) return get_character_stat_string('cannoneer', lvl) end, 
    ['dual_gunner'] = function(lvl) return get_character_stat_string('dual_gunner', lvl) end, 
    ['hunter'] = function(lvl) return get_character_stat_string('hunter', lvl) end, 
    ['sentry'] = function(lvl) return get_character_stat_string('sentry', lvl) end, 
    ['chronomancer'] = function(lvl) return get_character_stat_string('chronomancer', lvl) end, 
    ['spellblade'] = function(lvl) return get_character_stat_string('spellblade', lvl) end, 
    ['psykeeper'] = function(lvl) return get_character_stat_string('psykeeper', lvl) end, 
    ['engineer'] = function(lvl) return get_character_stat_string('engineer', lvl) end, 
    ['plague_doctor'] = function(lvl) return get_character_stat_string('plague_doctor', lvl) end,
    ['barbarian'] = function(lvl) return get_character_stat_string('barbarian', lvl) end,
    ['juggernaut'] = function(lvl) return get_character_stat_string('juggernaut', lvl) end,
    ['lich'] = function(lvl) return get_character_stat_string('lich', lvl) end,
    ['cryomancer'] = function(lvl) return get_character_stat_string('cryomancer', lvl) end,
    ['pyromancer'] = function(lvl) return get_character_stat_string('pyromancer', lvl) end,
    ['corruptor'] = function(lvl) return get_character_stat_string('corruptor', lvl) end,
    ['beastmaster'] = function(lvl) return get_character_stat_string('beastmaster', lvl) end,
    ['launcher'] = function(lvl) return get_character_stat_string('launcher', lvl) end,
    ['jester'] = function(lvl) return get_character_stat_string('jester', lvl) end,
    ['assassin'] = function(lvl) return get_character_stat_string('assassin', lvl) end,
    ['host'] = function(lvl) return get_character_stat_string('host', lvl) end,
    ['carver'] = function(lvl) return get_character_stat_string('carver', lvl) end,
    ['bane'] = function(lvl) return get_character_stat_string('bane', lvl) end,
    ['psykino'] = function(lvl) return get_character_stat_string('psykino', lvl) end,
    ['barrager'] = function(lvl) return get_character_stat_string('barrager', lvl) end,
    ['highlander'] = function(lvl) return get_character_stat_string('highlander', lvl) end,
    ['fairy'] = function(lvl) return get_character_stat_string('fairy', lvl) end,
    ['priest'] = function(lvl) return get_character_stat_string('priest', lvl) end,
    ['infestor'] = function(lvl) return get_character_stat_string('infestor', lvl) end,
    ['flagellant'] = function(lvl) return get_character_stat_string('flagellant', lvl) end,
    ['arcanist'] = function(lvl) return get_character_stat_string('arcanist', lvl) end,
    ['illusionist'] = function(lvl) return get_character_stat_string('illusionist', lvl) end,
    ['artificer'] = function(lvl) return get_character_stat_string('artificer', lvl) end,
    ['witch'] = function(lvl) return get_character_stat_string('witch', lvl) end,
    ['silencer'] = function(lvl) return get_character_stat_string('silencer', lvl) end,
    ['vulcanist'] = function(lvl) return get_character_stat_string('vulcanist', lvl) end,
    ['warden'] = function(lvl) return get_character_stat_string('warden', lvl) end,
    ['psychic'] = function(lvl) return get_character_stat_string('psychic', lvl) end,
    ['miner'] = function(lvl) return get_character_stat_string('miner', lvl) end,
    ['merchant'] = function(lvl) return get_character_stat_string('merchant', lvl) end,
    ['usurer'] = function(lvl) return get_character_stat_string('usurer', lvl) end,
    ['gambler'] = function(lvl) return get_character_stat_string('gambler', lvl) end,
    ['thief'] = function(lvl) return get_character_stat_string('thief', lvl) end,
  }

  class_stat_multipliers = {
    ['ranger'] = {hp = 1, dmg = 1.2, aspd = 1.5, area_dmg = 1, area_size = 1, def = 0.9, mvspd = 1.2},
    ['warrior'] = {hp = 1.4, dmg = 1.1, aspd = 0.9, area_dmg = 1, area_size = 1, def = 1.25, mvspd = 0.9},
    ['mage'] = {hp = 0.6, dmg = 1.4, aspd = 1, area_dmg = 1.25, area_size = 1.2, def = 0.75, mvspd = 1},
    ['rogue'] = {hp = 0.8, dmg = 1.3, aspd = 1.1, area_dmg = 0.6, area_size = 0.6, def = 0.8, mvspd = 1.4},
    ['healer'] = {hp = 1.2, dmg = 1, aspd = 0.5, area_dmg = 1, area_size = 1, def = 1.2, mvspd = 1},
    ['enchanter'] = {hp = 1.2, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 1.2, mvspd = 1.2},
    ['nuker'] = {hp = 0.9, dmg = 1, aspd = 0.75, area_dmg = 1.5, area_size = 1.5, def = 1, mvspd = 1},
    ['conjurer'] = {hp = 1, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 1, mvspd = 1},
    ['psyker'] = {hp = 1.5, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 0.5, mvspd = 1},
    ['curser'] = {hp = 1, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 0.75, mvspd = 1},
    ['forcer'] = {hp = 1.25, dmg = 1.1, aspd = 0.9, area_dmg = 0.75, area_size = 0.75, def = 1.2, mvspd = 1},
    ['swarmer'] = {hp = 1.2, dmg = 1, aspd = 1.25, area_dmg = 1, area_size = 1, def = 0.75, mvspd = 0.75},
    ['voider'] = {hp = 0.75, dmg = 1.3, aspd = 1, area_dmg = 0.8, area_size = 0.75, def = 0.6, mvspd = 0.8},
    ['sorcerer'] = {hp = 0.8, dmg = 1.3, aspd = 1, area_dmg = 1.2, area_size = 1, def = 0.8, mvspd = 1},
    ['mercenary'] = {hp = 1, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 1, mvspd = 1},
    ['explorer'] = {hp = 1, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 1, mvspd = 1.25},
    ['seeker'] = {hp = 0.5, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 1, mvspd = 0.3},
    ['mini_boss'] = {hp = 1, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 1, mvspd = 0.3},
    ['enemy_critter'] = {hp = 1, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 1, mvspd = 0.5},
    ['saboteur'] = {hp = 1, dmg = 1, aspd = 1, area_dmg = 1, area_size = 1, def = 1, mvspd = 1.4},
  }

  local ylb1 = function(lvl)
    if lvl == 3 then return 'light_bg'
    elseif lvl == 2 then return 'light_bg'
    elseif lvl == 1 then return 'yellow'
    else return 'light_bg' end
  end
  local ylb2 = function(lvl)
    if lvl == 3 then return 'light_bg'
    elseif lvl == 2 then return 'yellow'
    else return 'light_bg' end
  end
  local ylb3 = function(lvl)
    if lvl == 3 then return 'yellow'
    else return 'light_bg' end
  end
  class_descriptions = {
    ['ranger'] = function(lvl) return '[' .. ylb1(lvl) .. ']3[light_bg]/[' .. ylb2(lvl) .. ']6 [fg]- [' .. ylb1(lvl) .. ']8%[light_bg]/[' .. ylb2(lvl) .. ']16% [fg]攻击时有几率对友方游侠释放弹幕' end,
    ['warrior'] = function(lvl) return '[' .. ylb1(lvl) .. ']3[light_bg]/[' .. ylb2(lvl) .. ']6 [fg]- [' .. ylb1(lvl) .. ']+25[light_bg]/[' .. ylb2(lvl) .. ']+50 [fg]友方战士防御力' end,
    ['mage'] = function(lvl) return '[' .. ylb1(lvl) .. ']3[light_bg]/[' .. ylb2(lvl) .. ']6 [fg]- [' .. ylb1(lvl) .. ']-15[light_bg]/[' .. ylb2(lvl) .. ']-30 [fg]敌人防御力' end,
    ['rogue'] = function(lvl) return '[' .. ylb1(lvl) .. ']3[light_bg]/[' .. ylb2(lvl) .. ']6 [fg]- [' .. ylb1(lvl) .. ']15%[light_bg]/[' .. ylb2(lvl) .. ']30% [fg]友方盗贼暴击几率，造成[yellow]4倍[]伤害' end,
    ['healer'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+15%[light_bg]/[' .. ylb2(lvl) .. ']+30% [fg]创造治疗球时有几率额外创造[yellow]+1[fg]个治疗球' end,
    ['enchanter'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+15%[light_bg]/[' .. ylb2(lvl) .. ']+25% [fg]所有友军伤害' end,
    ['nuker'] = function(lvl) return '[' .. ylb1(lvl) .. ']3[light_bg]/[' .. ylb2(lvl) .. ']6 [fg]- [' .. ylb1(lvl) .. ']+15%[light_bg]/[' .. ylb2(lvl) .. ']+25% [fg]友方核弹手的范围伤害和范围大小' end,
    ['conjurer'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+25%[light_bg]/[' .. ylb2(lvl) .. ']+50% [fg]召唤物伤害和持续时间' end,
    ['psyker'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+2[light_bg]/[' .. ylb2(lvl) .. ']+4 [fg]灵能球总数和每个灵能者[yellow]+1[fg]个灵能球' end,
    ['curser'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+1[light_bg]/[' .. ylb2(lvl) .. ']+3 [fg]友方诅咒师的最大诅咒目标数' end,
    ['forcer'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+25%[light_bg]/[' .. ylb2(lvl) .. ']+50% [fg]所有友军击退力' end,
    ['swarmer'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+1[light_bg]/[' .. ylb2(lvl) .. ']+3 [fg]小怪的命中次数' end,
    ['voider'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+20%[light_bg]/[' .. ylb2(lvl) .. ']+40% [fg]友方虚空使者的持续伤害' end,
    ['sorcerer'] = function(lvl) 
      return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4[light_bg]/[' .. ylb3(lvl) .. ']6 [fg]- 法师每[' .. 
        ylb1(lvl) .. ']4[light_bg]/[' .. ylb2(lvl) .. ']3[light_bg]/[' .. ylb3(lvl) .. ']2[fg]次攻击重复一次攻击'
    end,
    ['mercenary'] = function(lvl) return '[' .. ylb1(lvl) .. ']2[light_bg]/[' .. ylb2(lvl) .. ']4 [fg]- [' .. ylb1(lvl) .. ']+8%[light_bg]/[' .. ylb2(lvl) .. ']+16% [fg]敌人死亡时掉落金币的几率' end,
    ['explorer'] = function(lvl) return '每个激活的职业为友方探索者提供[yellow]+15%[fg]攻击速度和伤害' end,
  }

  tier_to_characters = {
    [1] = {'vagrant', 'swordsman', 'magician', 'archer', 'scout', 'cleric', 'arcanist', 'merchant'},
    [2] = {'wizard', 'bomber', 'sage', 'squire', 'dual_gunner', 'sentry', 'chronomancer', 'barbarian', 'cryomancer', 'beastmaster', 'jester', 'carver', 'psychic', 'witch', 'silencer', 'outlaw', 'miner'},
    [3] = {'elementor', 'stormweaver', 'spellblade', 'psykeeper', 'engineer', 'juggernaut', 'pyromancer', 'host', 'assassin', 'bane', 'barrager', 'infestor', 'flagellant', 'artificer', 'usurer', 'gambler'},
    [4] = {'priest', 'highlander', 'psykino', 'fairy', 'blade', 'plague_doctor', 'cannoneer', 'vulcanist', 'warden', 'corruptor', 'thief'},
  }

  non_attacking_characters = {'cleric', 'stormweaver', 'squire', 'chronomancer', 'sage', 'psykeeper', 'bane', 'carver', 'fairy', 'priest', 'flagellant', 'merchant', 'miner'}
  non_cooldown_characters = {'squire', 'chronomancer', 'psykeeper', 'merchant', 'miner'}

  character_tiers = {
    ['vagrant'] = 1,
    ['swordsman'] = 1,
    ['magician'] = 1,
    ['archer'] = 1,
    ['scout'] = 1,
    ['cleric'] = 1,
    ['outlaw'] = 2,
    ['blade'] = 4,
    ['elementor'] = 3,
    -- ['saboteur'] = 2,
    ['bomber'] = 2,
    ['wizard'] = 2,
    ['stormweaver'] = 3,
    ['sage'] = 2,
    ['squire'] = 2,
    ['cannoneer'] = 4,
    ['dual_gunner'] = 2,
    -- ['hunter'] = 2,
    ['sentry'] = 2,
    ['chronomancer'] = 2,
    ['spellblade'] = 3,
    ['psykeeper'] = 3,
    ['engineer'] = 3,
    ['plague_doctor'] = 4,
    ['barbarian'] = 2,
    ['juggernaut'] = 3,
    -- ['lich'] = 4,
    ['cryomancer'] = 2,
    ['pyromancer'] = 3,
    ['corruptor'] = 4,
    ['beastmaster'] = 2,
    -- ['launcher'] = 2,
    ['jester'] = 2,
    ['assassin'] = 3,
    ['host'] = 3,
    ['carver'] = 2,
    ['bane'] = 3,
    ['psykino'] = 4,
    ['barrager'] = 3,
    ['highlander'] = 4,
    ['fairy'] = 4,
    ['priest'] = 4,
    ['infestor'] = 3,
    ['flagellant'] = 3,
    ['arcanist'] = 1,
    -- ['illusionist'] = 3,
    ['artificer'] = 3,
    ['witch'] = 2,
    ['silencer'] = 2,
    ['vulcanist'] = 4,
    ['warden'] = 4,
    ['psychic'] = 2,
    ['miner'] = 2,
    ['merchant'] = 1,
    ['usurer'] = 3,
    ['gambler'] = 3,
    ['thief'] = 4,
  }

  launches_projectiles = function(character)
    local classes = {'vagrant', 'archer', 'scout', 'outlaw', 'blade', 'wizard', 'cannoneer', 'dual_gunner', 'hunter', 'spellblade', 'engineer', 'corruptor', 'beastmaster', 'jester', 'assassin', 'barrager', 
      'arcanist', 'illusionist', 'artificer', 'miner', 'thief', 'sentry'}
    return table.any(classes, function(v) return v == character end)
  end

  get_number_of_units_per_class = function(units)
    local rangers = 0
    local warriors = 0
    local healers = 0
    local mages = 0
    local nukers = 0
    local conjurers = 0
    local rogues = 0
    local enchanters = 0
    local psykers = 0
    local cursers = 0
    local forcers = 0
    local swarmers = 0
    local voiders = 0
    local sorcerers = 0
    local mercenaries = 0
    local explorers = 0
    for _, unit in ipairs(units) do
      for _, unit_class in ipairs(character_classes[unit.character]) do
        if unit_class == 'ranger' then rangers = rangers + 1 end
        if unit_class == 'warrior' then warriors = warriors + 1 end
        if unit_class == 'healer' then healers = healers + 1 end
        if unit_class == 'mage' then mages = mages + 1 end
        if unit_class == 'nuker' then nukers = nukers + 1 end
        if unit_class == 'conjurer' then conjurers = conjurers + 1 end
        if unit_class == 'rogue' then rogues = rogues + 1 end
        if unit_class == 'enchanter' then enchanters = enchanters + 1 end
        if unit_class == 'psyker' then psykers = psykers + 1 end
        if unit_class == 'curser' then cursers = cursers + 1 end
        if unit_class == 'forcer' then forcers = forcers + 1 end
        if unit_class == 'swarmer' then swarmers = swarmers + 1 end
        if unit_class == 'voider' then voiders = voiders + 1 end
        if unit_class == 'sorcerer' then sorcerers = sorcerers + 1 end
        if unit_class == 'mercenary' then mercenaries = mercenaries + 1 end
        if unit_class == 'explorer' then explorers = explorers + 1 end
      end
    end
    return {ranger = rangers, warrior = warriors, healer = healers, mage = mages, nuker = nukers, conjurer = conjurers, rogue = rogues,
      enchanter = enchanters, psyker = psykers, curser = cursers, forcer = forcers, swarmer = swarmers, voider = voiders, sorcerer = sorcerers, mercenary = mercenaries, explorer = explorers}
  end

  get_class_levels = function(units)
    local units_per_class = get_number_of_units_per_class(units)
    local units_to_class_level = function(number_of_units, class)
      if class == 'ranger' or class == 'warrior' or class == 'mage' or class == 'nuker' or class == 'rogue' then
        if number_of_units >= 6 then return 2
        elseif number_of_units >= 3 then return 1
        else return 0 end
      elseif class == 'healer' or class == 'conjurer' or class == 'enchanter' or class == 'curser' or class == 'forcer' or class == 'swarmer' or class == 'voider' or class == 'mercenary' or class == 'psyker' then
        if number_of_units >= 4 then return 2
        elseif number_of_units >= 2 then return 1
        else return 0 end
      elseif class == 'sorcerer' then
        if number_of_units >= 6 then return 3
        elseif number_of_units >= 4 then return 2
        elseif number_of_units >= 2 then return 1
        else return 0 end
      elseif class == 'explorer' then
        if number_of_units >= 1 then return 1
        else return 0 end
      end
    end
    return {
      ranger = units_to_class_level(units_per_class.ranger, 'ranger'),
      warrior = units_to_class_level(units_per_class.warrior, 'warrior'),
      mage = units_to_class_level(units_per_class.mage, 'mage'),
      nuker = units_to_class_level(units_per_class.nuker, 'nuker'),
      rogue = units_to_class_level(units_per_class.rogue, 'rogue'),
      healer = units_to_class_level(units_per_class.healer, 'healer'),
      conjurer = units_to_class_level(units_per_class.conjurer, 'conjurer'),
      enchanter = units_to_class_level(units_per_class.enchanter, 'enchanter'),
      psyker = units_to_class_level(units_per_class.psyker, 'psyker'),
      curser = units_to_class_level(units_per_class.curser, 'curser'),
      forcer = units_to_class_level(units_per_class.forcer, 'forcer'),
      swarmer = units_to_class_level(units_per_class.swarmer, 'swarmer'),
      voider = units_to_class_level(units_per_class.voider, 'voider'),
      sorcerer = units_to_class_level(units_per_class.sorcerer, 'sorcerer'),
      mercenary = units_to_class_level(units_per_class.mercenary, 'mercenary'),
      explorer = units_to_class_level(units_per_class.explorer, 'explorer'),
    }
  end

  get_classes = function(units)
    local classes = {}
    for _, unit in ipairs(units) do
      table.insert(classes, table.copy(character_classes[unit.character]))
    end
    return table.unify(table.flatten(classes))
  end

  class_set_numbers = {
    ['ranger'] = function(units) return 3, 6, nil, get_number_of_units_per_class(units).ranger end,
    ['warrior'] = function(units) return 3, 6, nil, get_number_of_units_per_class(units).warrior end,
    ['mage'] = function(units) return 3, 6, nil, get_number_of_units_per_class(units).mage end,
    ['nuker'] = function(units) return 3, 6, nil, get_number_of_units_per_class(units).nuker end,
    ['rogue'] = function(units) return 3, 6, nil, get_number_of_units_per_class(units).rogue end,
    ['healer'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).healer end,
    ['conjurer'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).conjurer end,
    ['enchanter'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).enchanter end,
    ['psyker'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).psyker end,
    ['curser'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).curser end,
    ['forcer'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).forcer end,
    ['swarmer'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).swarmer end,
    ['voider'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).voider end,
    ['sorcerer'] = function(units) return 2, 4, 6, get_number_of_units_per_class(units).sorcerer end,
    ['mercenary'] = function(units) return 2, 4, nil, get_number_of_units_per_class(units).mercenary end,
    ['explorer'] = function(units) return 1, 1, nil, get_number_of_units_per_class(units).explorer end,
  }

  passive_names = {
    ['centipede'] = 'Centipede',
    ['ouroboros_technique_r'] = 'Ouroboros Technique R',
    ['ouroboros_technique_l'] = 'Ouroboros Technique L',
    ['amplify'] = 'Amplify',
    ['resonance'] = 'Resonance',
    ['ballista'] = 'Ballista',
    ['call_of_the_void'] = 'Call of the Void',
    ['crucio'] = 'Crucio',
    ['speed_3'] = 'Speed 3',
    ['damage_4'] = 'Damage 4',
    ['shoot_5'] = 'Shoot 5',
    ['death_6'] = 'Death 6',
    ['lasting_7'] = 'Lasting 7',
    ['defensive_stance'] = 'Defensive Stance',
    ['offensive_stance'] = 'Offensive Stance',
    ['kinetic_bomb'] = 'Kinetic Bomb',
    ['porcupine_technique'] = 'Porcupine Technique',
    ['last_stand'] = 'Last Stand',
    ['seeping'] = 'Seeping',
    ['deceleration'] = 'Deceleration',
    ['annihilation'] = 'Annihilation',
    ['malediction'] = 'Malediction',
    ['hextouch'] = 'Hextouch',
    ['whispers_of_doom'] = 'Whispers of Doom',
    ['tremor'] = 'Tremor',
    ['heavy_impact'] = 'Heavy Impact',
    ['fracture'] = 'Fracture',
    ['meat_shield'] = 'Meat Shield',
    ['hive'] = 'Hive',
    ['baneling_burst'] = 'Baneling Burst',
    ['blunt_arrow'] = 'Blunt Arrow',
    ['explosive_arrow'] = 'Explosive Arrow',
    ['divine_machine_arrow'] = 'Divine Machine Arrow',
    ['chronomancy'] = 'Chronomancy',
    ['awakening'] = 'Awakening',
    ['divine_punishment'] = 'Divine Punishment',
    ['assassination'] = 'Assassination',
    ['flying_daggers'] = 'Flying Daggers',
    ['ultimatum'] = 'Ultimatum',
    ['magnify'] = 'Magnify',
    ['echo_barrage'] = 'Echo Barrage',
    ['unleash'] = 'Unleash',
    ['reinforce'] = 'Reinforce',
    ['payback'] = 'Payback',
    ['enchanted'] = 'Enchanted',
    ['freezing_field'] = 'Freezing Field',
    ['burning_field'] = 'Burning Field',
    ['gravity_field'] = 'Gravity Field',
    ['magnetism'] = 'Magnetism',
    ['insurance'] = 'Insurance',
    ['dividends'] = 'Dividends',
    ['berserking'] = 'Berserking',
    ['unwavering_stance'] = 'Unwavering Stance',
    ['unrelenting_stance'] = 'Unrelenting Stance',
    ['blessing'] = 'Blessing',
    ['haste'] = 'Haste',
    ['divine_barrage'] = 'Divine Barrage',
    ['orbitism'] = 'Orbitism',
    ['psyker_orbs'] = 'Psyker Orbs',
    ['psychosense'] = 'Psychosense',
    ['psychosink'] = 'Psychosink',
    ['rearm'] = 'Rearm',
    ['taunt'] = 'Taunt',
    ['construct_instability'] = 'Construct Instability',
    ['intimidation'] = 'Intimidation',
    ['vulnerability'] = 'Vulnerability',
    ['temporal_chains'] = 'Temporal Chains',
    ['ceremonial_dagger'] = 'Ceremonial Dagger',
    ['homing_barrage'] = 'Homing Barrage',
    ['critical_strike'] = 'Critical Strike',
    ['noxious_strike'] = 'Noxious Strike',
    ['infesting_strike'] = 'Infesting Strike',
    ['kinetic_strike'] = 'Kinetic Strike',
    ['burning_strike'] = 'Burning Strike',
    ['lucky_strike'] = 'Lucky Strike',
    ['healing_strike'] = 'Healing Strike',
    ['stunning_strike'] = 'Stunning Strike',
    ['silencing_strike'] = 'Silencing Strike',
    ['warping_shots'] = 'Warping Shots',
    ['culling_strike'] = 'Culling Strike',
    ['lightning_strike'] = 'Lightning Strike',
    ['psycholeak'] = 'Psycholeak',
    ['divine_blessing'] = 'Divine Blessing',
    ['hardening'] = 'Hardening',
  }

  passive_descriptions = {
    ['centipede'] = '[yellow]+10/20/30%[fg] 移动速度',
    ['ouroboros_technique_r'] = '[fg]向右旋转时每秒释放 [yellow]2/3/4[fg] 个投射物',
    ['ouroboros_technique_l'] = '[fg]向左旋转时为所有单位提供 [yellow]+15/25/35%[fg] 防御',
    ['amplify'] = '[yellow]+20/35/50%[fg] 范围伤害',
    ['resonance'] = '[fg]所有范围攻击每命中一个单位增加 [yellow]+3/5/7%[fg] 伤害',
    ['ballista'] = '[yellow]+20/35/50%[fg] 投射物伤害',
    ['call_of_the_void'] = '[yellow]+30/60/90%[fg] 持续伤害',
    ['crucio'] = '[fg]受到伤害时将伤害的 [yellow]20/30/40%[fg] 分摊给所有敌人',
    ['speed_3'] = '[fg]位置 [yellow]3[fg] 获得 [yellow]+50%[fg] 攻击速度',
    ['damage_4'] = '[fg]位置 [yellow]4[fg] 获得 [yellow]+30%[fg] 伤害',
    ['shoot_5'] = '[fg]位置 [yellow]5[fg] 每秒发射 [yellow]3[fg] 个投射物',
    ['death_6'] = '[fg]位置 [yellow]6[fg] 每 [yellow]3[fg] 秒损失 [yellow]10%[fg] 生命值',
    ['lasting_7'] = '[fg]位置 [yellow]7[fg] 死亡后可以存活 [yellow]10[fg] 秒',
    ['defensive_stance'] = '[fg]第一个和最后一个位置获得 [yellow]+10/20/30%[fg] 防御',
    ['offensive_stance'] = '[fg]第一个和最后一个位置获得 [yellow]+10/20/30%[fg] 伤害',
    ['kinetic_bomb'] = '[fg]当一个友军死亡时会爆炸,将敌人击退',
    ['porcupine_technique'] = '[fg]当一个友军死亡时会爆炸,释放穿透和弹射的投射物',
    ['last_stand'] = '[fg]最后存活的单位会完全恢复生命值并获得 [yellow]+20%[fg] 全属性加成',
    ['seeping'] = '[fg]受到持续伤害的敌人 [yellow]-15/25/35%[fg] 防御',
    ['deceleration'] = '[fg]受到持续伤害的敌人 [yellow]-15/25/35%[fg] 移动速度',
    ['annihilation'] = '[fg]当一个虚空使者死亡时,对所有敌人造成其持续伤害,持续 [yellow]3[fg] 秒',
    ['malediction'] = '[fg]所有友方诅咒者获得 [yellow]+1/3/5[fg] 最大诅咒目标数',
    ['hextouch'] = '[fg]被诅咒的敌人每秒受到 [yellow]10/15/20[fg] 点伤害,持续 [yellow]3[fg] 秒',
    ['whispers_of_doom'] = '[fg]诅咒会施加厄运,每积累 [yellow]4/3/2[fg] 层厄运造成 [yellow]100/150/200[fg] 伤害',
    ['tremor'] = '[fg]敌人撞击墙壁时会根据击退力度创造一个区域',
    ['heavy_impact'] = '[fg]敌人撞击墙壁时会根据击退力度受到伤害',
    ['fracture'] = '[fg]敌人撞击墙壁时会爆炸成投射物',
    ['meat_shield'] = '[fg]小动物可以 [yellow]格挡[fg] 敌人的投射物',
    ['hive'] = '[fg]小动物获得 [yellow]+1/2/3[fg] 生命值',
    ['baneling_burst'] = '[fg]小动物接触时立即死亡但会造成 [yellow]50/100/150[fg] 范围伤害',
    ['blunt_arrow'] = '[fg]游侠箭矢有 [yellow]+10/20/30%[fg] 几率击退',
    ['explosive_arrow'] = '[fg]游侠箭矢有 [yellow]+10/20/30%[fg] 几率造成 [yellow]10/20/30%[fg] 范围伤害',
    ['divine_machine_arrow'] = '[fg]游侠箭矢有 [yellow]10/20/30%[fg] 几率追踪并穿透 [yellow]1/2/3[fg] 次',
    ['chronomancy'] = '[fg]法师施法速度提高 [yellow]15/25/35%[fg]',
    ['awakening'] = '[fg]每回合随机一名法师获得 [yellow]+50/75/100%[fg] 攻击速度和伤害,持续该回合',
    ['divine_punishment'] = '[fg]根据拥有的法师数量对所有敌人造成伤害',
    ['assassination'] = '[fg]盗贼的暴击造成 [yellow]8/10/12倍[fg] 伤害但普通攻击伤害减半',
    ['flying_daggers'] = '[fg]盗贼投掷的所有投射物可以连锁 [yellow]+2/3/4[fg] 次',
    ['ultimatum'] = '[fg]连锁的投射物每次连锁获得 [yellow]+10/20/30%[fg] 伤害',
    ['magnify'] = '[yellow]+20/35/50%[fg] 范围大小',
    ['echo_barrage'] = '[fg]范围攻击命中时有 [yellow]10/20/30%[fg] 几率创造 [yellow]1/2/3[fg] 个次级范围',
    ['unleash'] = '[fg]所有轰炸手每秒获得 [yellow]+1%[fg] 范围大小和伤害',
    ['reinforce'] = '[fg]拥有一个或更多附魔师时获得 [yellow]+10/20/30%[fg] 全局伤害、防御和攻速',
    ['payback'] = '[fg]每当附魔师受到伤害时,所有友军获得 [yellow]+2/5/8%[fg] 伤害',
    ['enchanted'] = '[fg]拥有两个或更多附魔师时,随机一个单位获得 [yellow]+33/66/99%[fg] 攻击速度',
    ['freezing_field'] = '[fg]法师重复施法时创造一个区域,使敌人减速 [yellow]50%[fg],持续 [yellow]2[fg] 秒',
    ['burning_field'] = '[fg]法师重复施法时创造一个区域,每秒造成 [yellow]30[fg] 点伤害,持续 [yellow]2[fg] 秒',
    ['gravity_field'] = '[fg]法师重复施法时创造一个区域,将敌人吸引,持续 [yellow]1[fg] 秒',
    ['magnetism'] = '[fg]金币和治疗球从更远的距离被蛇吸引',
    ['insurance'] = '[fg]英雄死亡时掉落 [yellow]2[fg] 金币的几率是佣兵加成的 [yellow]4[fg] 倍',
    ['dividends'] = '[fg]佣兵获得等同于你拥有的金币数量的 [yellow]+X%[fg] 伤害',
    ['berserking'] = '[fg]所有战士根据已损失生命值获得最多 [yellow]+50/75/100%[fg] 攻击速度',
    ['unwavering_stance'] = '[fg]所有战士每 [yellow]5[fg] 秒获得 [yellow]+4/8/12%[fg] 防御',
    ['unrelenting_stance'] = '[fg]每当战士受到伤害时,所有友军获得 [yellow]+2/5/8%[fg] 防御',
    ['blessing'] = '[yellow]+10/20/30%[fg] 治疗效果',
    ['haste'] = '[fg]拾取治疗球时获得 [yellow]+50%[fg] 移动速度,在 [yellow]4[fg] 秒内衰减',
    ['divine_barrage'] = '[fg]拾取治疗球时有 [yellow]20/40/60%[fg] 几率释放一轮弹射弹幕',
    ['orbitism'] = '[yellow]+25/50/75%[fg] 灵能球移动速度',
    ['psyker_orbs'] = '[yellow]+1/2/4[fg] 灵能球总数',
    ['psychosense'] = '[yellow]+33/66/99%[fg] 球体范围',
    ['psychosink'] = '[fg]灵能球造成 [yellow]+40/80/120%[fg] 伤害',
    ['rearm'] = '[fg]构造体重复一次攻击',
    ['taunt'] = '[fg]构造体攻击时有 [yellow]10/20/30%[fg] 几率嘲讽附近敌人',
    ['construct_instability'] = '[fg]构造体消失时爆炸,造成 [yellow]100/150/200%[fg] 伤害',
    ['intimidation'] = '[fg]敌人生成时 [yellow]-10/20/30%[fg] 最大生命值',
    ['vulnerability'] = '[fg]敌人受到的伤害提高 [yellow]+10/20/30%[fg]',
    ['temporal_chains'] = '[fg]敌人减速 [yellow]10/20/30%[fg]',
    ['ceremonial_dagger'] = '[fg]击杀敌人时发射一把追踪匕首',
    ['homing_barrage'] = '[fg]击杀敌人时有 [yellow]8/16/24%[fg] 几率释放一轮追踪弹幕',
    ['critical_strike'] = '[fg]攻击有 [yellow]5/10/15%[fg] 几率暴击,造成 [yellow]2倍[fg] 伤害',
    ['noxious_strike'] = '[fg]攻击有 [yellow]8/16/24%[fg] 几率使目标中毒,每秒受到 [yellow]20%[fg] 伤害,持续 [yellow]3[fg] 秒',
    ['infesting_strike'] = '[fg]击杀时有 [yellow]10/20/30%[fg] 几率生成 [yellow]2[fg] 只小动物',
    ['kinetic_strike'] = '[fg]攻击有 [yellow]10/20/30%[fg] 几率以强大力量击退敌人',
    ['burning_strike'] = '[fg]攻击有 [yellow]15%[fg] 几率使目标燃烧,每秒受到 [yellow]20%[fg] 伤害,持续 [yellow]3[fg] 秒',
    ['lucky_strike'] = '[fg]攻击有 [yellow]8%[fg] 几率使敌人死亡时掉落金币',
    ['healing_strike'] = '[fg]击杀时有 [yellow]8%[fg] 几率生成一个治疗球',
    ['stunning_strike'] = '[fg]攻击有 [yellow]8/16/24%[fg] 几率使目标眩晕 [yellow]2[fg] 秒',
    ['silencing_strike'] = '[fg]命中时有 [yellow]8/16/24%[fg] 几率使目标沉默 [yellow]2[fg] 秒',
    ['warping_shots'] = '[fg]投射物无视墙壁碰撞并在屏幕上传送 [yellow]1/2/3[fg] 次',
    ['culling_strike'] = '[fg]立即击杀生命值低于最大值 [yellow]10/20/30%[fg] 的精英',
    ['lightning_strike'] = '[fg]投射物有 [yellow]5/10/15%[fg] 几率创造闪电链,造成 [yellow]60/80/100%[fg] 伤害',
    ['psycholeak'] = '[fg]位置 [yellow]1[fg] 每 [yellow]10[fg] 秒生成 [yellow]1[fg] 个灵能球',
    ['divine_blessing'] = '[fg]每 [yellow]8[fg] 秒生成 [yellow]1[fg] 个治疗球',
    ['hardening'] = '[fg]友军死亡后,所有友军获得 [yellow]+150%[fg] 防御,持续 [yellow]3[fg] 秒',
  }

  local ts = function(lvl, a, b, c) return '[' .. ylb1(lvl) .. ']' .. tostring(a) .. '[light_bg]/[' .. ylb2(lvl) .. ']' .. tostring(b) .. '[light_bg]/[' .. ylb3(lvl) .. ']' .. tostring(c) .. '[fg]' end
  passive_descriptions_level = {
    ['centipede'] = function(lvl) return ts(lvl, '+10%', '20%', '30%') .. ' 移动速度' end,
    ['ouroboros_technique_r'] = function(lvl) return '[fg]向右旋转时每秒发射 ' .. ts(lvl, '2', '3', '4') .. ' 个投射物' end,
    ['ouroboros_technique_l'] = function(lvl) return '[fg]向左旋转时为所有单位提供 ' .. ts(lvl, '+15%', '25%', '35%') .. ' 防御' end,
    ['amplify'] = function(lvl) return ts(lvl, '+20%', '35%', '50%') .. ' 范围伤害' end,
    ['resonance'] = function(lvl) return '[fg]所有范围攻击每命中一个单位获得 ' .. ts(lvl, '+3%', '5%', '7%') .. ' 伤害' end,
    ['ballista'] = function(lvl) return ts(lvl, '+20%', '35%', '50%') .. ' 投射物伤害' end,
    ['call_of_the_void'] = function(lvl) return ts(lvl, '+30%', '60%', '90%') .. ' 持续伤害' end,
    ['crucio'] = function(lvl) return '[fg]受到伤害时将伤害的 ' .. ts(lvl, '20%', '30%', '40%') .. ' 分摊给所有敌人' end,
    ['speed_3'] = function(lvl) return '[fg]位置 [yellow]3[fg] 获得 [yellow]+50%[fg] 攻击速度' end,
    ['damage_4'] = function(lvl) return '[fg]位置 [yellow]4[fg] 获得 [yellow]+30%[fg] 伤害' end,
    ['shoot_5'] = function(lvl) return '[fg]位置 [yellow]5[fg] 每秒发射 [yellow]3[fg] 个投射物' end,
    ['death_6'] = function(lvl) return '[fg]位置 [yellow]6[fg] 每 [yellow]3[fg] 秒受到最大生命值 [yellow]10%[fg] 的伤害' end,
    ['lasting_7'] = function(lvl) return '[fg]位置 [yellow]7[fg] 死亡后会继续存活 [yellow]10[fg] 秒' end,
    ['defensive_stance'] = function(lvl) return '[fg]第一个和最后一个位置获得 ' .. ts(lvl, '+10%', '20%', '30%') .. ' 防御' end,
    ['offensive_stance'] = function(lvl) return '[fg]第一个和最后一个位置获得 ' .. ts(lvl, '+10%', '20%', '30%') .. ' 伤害' end,
    ['kinetic_bomb'] = function(lvl) return '[fg]友军死亡时爆炸,击退敌人' end,
    ['porcupine_technique'] = function(lvl) return '[fg]友军死亡时爆炸,发射穿透投射物' end,
    ['last_stand'] = function(lvl) return '[fg]最后一个存活的单位会被完全治愈并获得 [yellow]+20%[fg] 全属性加成' end,
    ['seeping'] = function(lvl) return '[fg]受到持续伤害的敌人 ' .. ts(lvl, '-15%', '25%', '35%') .. ' 防御' end,
    ['deceleration'] = function(lvl) return '[fg]受到持续伤害的敌人 ' .. ts(lvl, '-15%', '25%', '35%') .. ' 移动速度' end,
    ['annihilation'] = function(lvl) return '[fg]虚空使者死亡时对所有敌人造成其持续伤害,持续 [yellow]3[fg] 秒' end,
    ['malediction'] = function(lvl) return '[fg]所有友方诅咒者 ' .. ts(lvl, '+1', '3', '5') .. ' 最大诅咒目标数' end,
    ['hextouch'] = function(lvl) return '[fg]被诅咒的敌人每秒受到 ' .. ts(lvl, '10', '15', '20') .. ' 点伤害,持续 [yellow]3[fg] 秒' end,
    ['whispers_of_doom'] = function(lvl) return '[fg]诅咒附加厄运,每积累 ' .. ts(lvl, '4', '3', '2') .. ' 层厄运造成 ' .. ts(lvl, '100', '150', '200') .. ' 伤害' end,
    ['tremor'] = function(lvl) return '[fg]敌人撞击墙壁时根据击退力量创造一个区域' end,
    ['heavy_impact'] = function(lvl) return '[fg]敌人撞击墙壁时根据击退力量受到伤害' end,
    ['fracture'] = function(lvl) return '[fg]敌人撞击墙壁时爆炸成投射物' end,
    ['meat_shield'] = function(lvl) return '[fg]小动物可以 [yellow]阻挡[fg] 敌人的投射物' end,
    ['hive'] = function(lvl) return '[fg]小动物获得 ' .. ts(lvl, '+1', '2', '3') .. ' 生命值' end,
    ['baneling_burst'] = function(lvl) return '[fg]小动物接触时立即死亡但造成 ' .. ts(lvl, '50', '100', '150') .. ' 范围伤害' end,
    ['blunt_arrow'] = function(lvl) return '[fg]游侠箭矢有 ' .. ts(lvl, '+10%', '20%', '30%') .. ' 几率击退' end,
    ['explosive_arrow'] = function(lvl) return '[fg]游侠箭矢有 ' .. ts(lvl, '+10%', '20%', '30%') .. ' 几率造成 ' .. ts(lvl, '10%', '20%', '30%') .. ' 范围伤害' end,
    ['divine_machine_arrow'] = function(lvl) return '[fg]游侠箭矢有 ' .. ts(lvl, '10%', '20%', '30%') .. ' 几率追踪并穿透 ' .. ts(lvl, '1', '2', '3') .. ' 次' end,
    ['chronomancy'] = function(lvl) return '[fg]法师施法速度提高 ' .. ts(lvl, '15%', '25%', '35%') end,
    ['awakening'] = function(lvl) return '[fg]每回合随机 [yellow]1[fg] 个法师获得 ' .. ts(lvl, '+50%', '75%', '100%') .. ' 攻击速度和伤害' end,
    ['divine_punishment'] = function(lvl) return '[fg]根据拥有的法师数量对所有敌人造成伤害' end,
    ['assassination'] = function(lvl) return '[fg]盗贼暴击造成 ' .. ts(lvl, '8倍', '10倍', '12倍') .. ' 伤害但普通攻击伤害 [yellow]减半[fg]' end,
    ['flying_daggers'] = function(lvl) return '[fg]盗贼投掷的所有投射物可以连锁 ' .. ts(lvl, '+2', '3', '4') .. ' 次' end,
    ['ultimatum'] = function(lvl) return '[fg]连锁的投射物每次连锁获得 ' .. ts(lvl, '+10%', '20%', '30%') .. ' 伤害' end,
    ['magnify'] = function(lvl) return ts(lvl, '+20%', '35%', '50%') .. ' 范围大小' end,
    ['echo_barrage'] = function(lvl) return '[fg]范围攻击命中时有 ' .. ts(lvl, '10%', '20%', '30%') .. ' 几率创造 ' .. ts(lvl, '1', '2', '3') .. ' 个次级范围' end,
    ['unleash'] = function(lvl) return '[fg]所有轰炸手每秒获得 [yellow]+1%[fg] 范围大小和伤害' end,
    ['reinforce'] = function(lvl) return '[fg]拥有一个或更多附魔师时获得 ' .. ts(lvl, '+10%', '20%', '30%') .. ' 全局伤害、防御和攻速' end,
    ['payback'] = function(lvl) return '[fg]每当附魔师受到伤害时,所有友军获得 ' .. ts(lvl, '+2%', '5%', '8%') .. ' 伤害' end,
    ['enchanted'] = function(lvl) return '[fg]拥有两个或更多附魔师时,随机一个单位获得 ' .. ts(lvl, '+33%', '66%', '99%') .. ' 攻击速度' end,
    ['freezing_field'] = function(lvl) return '[fg]法师重复施法时创造一个区域,使敌人减速 [yellow]50%[fg],持续 [yellow]2[fg] 秒' end,
    ['burning_field'] = function(lvl) return '[fg]法师重复施法时创造一个区域,每秒造成 [yellow]30[fg] 点伤害,持续 [yellow]2[fg] 秒' end,
    ['gravity_field'] = function(lvl) return '[fg]法师重复施法时创造一个区域,将敌人吸引,持续 [yellow]1[fg] 秒' end,
    ['magnetism'] = function(lvl) return '[fg]金币和治疗球从更远的距离被蛇吸引' end,
    ['insurance'] = function(lvl) return '[fg]英雄死亡时掉落 [yellow]2[fg] 金币的几率是佣兵加成的 [yellow]4[fg] 倍' end,
    ['dividends'] = function(lvl) return '[fg]佣兵获得等同于你拥有的金币数量的 [yellow]+X%[fg] 伤害' end,
    ['berserking'] = function(lvl) return '[fg]所有战士根据已损失生命值获得最多 ' .. ts(lvl, '+50%', '75%', '100%') .. ' 攻击速度' end,
    ['unwavering_stance'] = function(lvl) return '[fg]所有战士每 [yellow]5[fg] 秒获得 ' .. ts(lvl, '+4%', '8%', '12%') .. ' 防御' end,
    ['unrelenting_stance'] = function(lvl) return '[fg]每当战士受到伤害时,所有友军获得 ' .. ts(lvl, '+2%', '5%', '8%') .. ' 防御' end,
    ['blessing'] = function(lvl) return ts(lvl, '+10%', '20%', '30%') .. ' 治疗效果' end,
    ['haste'] = function(lvl) return '[fg]拾取治疗球时获得 [yellow]+50%[fg] 移动速度,在 [yellow]4[fg] 秒内衰减' end,
    ['divine_barrage'] = function(lvl) return '[fg]拾取治疗球时有 ' .. ts(lvl, '20%', '40%', '60%') .. ' 几率释放一轮弹射弹幕' end,
    ['orbitism'] = function(lvl) return ts(lvl, '+25%', '50%', '75%') .. ' 灵能球移动速度' end,
    ['psyker_orbs'] = function(lvl) return ts(lvl, '+1', '2', '4') .. ' 灵能球总数' end,
    ['psychosense'] = function(lvl) return ts(lvl, '+33%', '66%', '99%') .. ' 球体范围' end,
    ['psychosink'] = function(lvl) return '[fg]灵能球造成 ' .. ts(lvl, '+40%', '80%', '120%') .. ' 伤害' end,
    ['rearm'] = function(lvl) return '[fg]构造体重复一次攻击' end,
    ['taunt'] = function(lvl) return '[fg]构造体攻击时有 ' .. ts(lvl, '10%', '20%', '30%') .. ' 几率嘲讽附近敌人' end,
    ['construct_instability'] = function(lvl) return '[fg]构造体消失时爆炸,造成 ' .. ts(lvl, '100', '150', '200%') .. ' 伤害' end,
    ['intimidation'] = function(lvl) return '[fg]敌人生成时 ' .. ts(lvl, '-10', '20', '30%') .. ' 最大生命值' end,
    ['vulnerability'] = function(lvl) return '[fg]敌人受到的伤害提高 ' .. ts(lvl, '+10', '20', '30%') end,
    ['temporal_chains'] = function(lvl) return '[fg]敌人减速 ' .. ts(lvl, '10', '20', '30%') end,
    ['ceremonial_dagger'] = function(lvl) return '[fg]击杀敌人时发射一把追踪匕首' end,
    ['homing_barrage'] = function(lvl) return '[fg]击杀敌人时有 ' .. ts(lvl, '8', '16', '24%') .. ' 几率释放一轮追踪弹幕' end,
    ['critical_strike'] = function(lvl) return '[fg]攻击有 ' .. ts(lvl, '5', '10', '15%') .. ' 几率暴击,造成 [yellow]2倍[fg] 伤害' end,
    ['noxious_strike'] = function(lvl) return '[fg]攻击有 ' .. ts(lvl, '8', '16', '24%') .. ' 几率使目标中毒,每秒受到 [yellow]20%[fg] 伤害,持续 [yellow]3[fg] 秒' end,
    ['infesting_strike'] = function(lvl) return '[fg]击杀时有 ' .. ts(lvl, '10', '20', '30%') .. ' 几率生成 [yellow]2[fg] 只小动物' end,
    ['kinetic_strike'] = function(lvl) return '[fg]攻击有 ' .. ts(lvl, '10', '20', '30%') .. ' 几率以强大力量击退敌人' end,
    ['burning_strike'] = function(lvl) return '[fg]攻击有 [yellow]15%[fg] 几率使目标燃烧,每秒受到 [yellow]20%[fg] 伤害,持续 [yellow]3[fg] 秒' end,
    ['lucky_strike'] = function(lvl) return '[fg]攻击有 [yellow]8%[fg] 几率使敌人死亡时掉落金币' end,
    ['healing_strike'] = function(lvl) return '[fg]击杀时有 [yellow]8%[fg] 几率生成一个治疗球' end,
    ['stunning_strike'] = function(lvl) return '[fg]攻击有 ' .. ts(lvl, '8', '16', '24%') .. ' 几率使目标眩晕 [yellow]2[fg] 秒' end,
    ['silencing_strike'] = function(lvl) return '[fg]命中时有 ' .. ts(lvl, '8', '16', '24%') .. ' 几率使目标沉默 [yellow]2[fg] 秒' end,
    ['warping_shots'] = function(lvl) return '[fg]投射物无视墙壁碰撞并在屏幕上传送 ' .. ts(lvl, '1', '2', '3') .. ' 次' end,
    ['culling_strike'] = function(lvl) return '[fg]立即击杀生命值低于最大值 ' .. ts(lvl, '10', '20', '30%') .. ' 的精英' end,
    ['lightning_strike'] = function(lvl) return '[fg]投射物有 ' .. ts(lvl, '5', '10', '15%') .. ' 几率创造闪电链,造成 ' .. ts(lvl, '60', '80', '100%') .. ' 伤害' end,
    ['psycholeak'] = function(lvl) return '[fg]位置 [yellow]1[fg] 每 [yellow]10[fg] 秒生成 [yellow]1[fg] 个灵能球' end,
    ['divine_blessing'] = function(lvl) return '[fg]每 [yellow]8[fg] 秒生成 [yellow]1[fg] 个治疗球' end,
    ['hardening'] = function(lvl) return '[fg]友军死亡后,所有友军获得 [yellow]+150%[fg] 防御,持续 [yellow]3[fg] 秒' end,
  }

  level_to_tier_weights = {
    [1] = {90, 10, 0, 0},
    [2] = {80, 15, 5, 0},
    [3] = {75, 20, 5, 0},
    [4] = {70, 20, 10, 0},
    [5] = {70, 20, 10, 0},
    [6] = {65, 25, 10, 0},
    [7] = {60, 25, 15, 0},
    [8] = {55, 25, 15, 5},
    [9] = {50, 30, 15, 5},
    [10] = {50, 30, 15, 5},
    [11] = {45, 30, 20, 5},
    [12] = {40, 30, 20, 10},
    [13] = {35, 30, 25, 10},
    [14] = {30, 30, 25, 15},
    [15] = {25, 30, 30, 15},
    [16] = {25, 25, 30, 20},
    [17] = {20, 25, 35, 20},
    [18] = {15, 25, 35, 25},
    [19] = {10, 25, 40, 25},
    [20] = {5, 25, 40, 30},
    [21] = {0, 25, 40, 35},
    [22] = {0, 20, 40, 40},
    [23] = {0, 20, 35, 45},
    [24] = {0, 10, 30, 60},
    [25] = {0, 0, 0, 100},
  }

  level_to_gold_gained = {
    [1] = {3, 3},
    [2] = {3, 3},
    [3] = {5, 6},
    [4] = {4, 5},
    [5] = {5, 8},
    [6] = {8, 10},
    [7] = {8, 10}, 
    [8] = {12, 14},
    [9] = {14, 18},
    [10] = {10, 13},
    [11] = {12, 15},
    [12] = {18, 20},
    [13] = {10, 14},
    [14] = {12, 16},
    [15] = {14, 18},
    [16] = {12, 12},
    [17] = {12, 12},
    [18] = {20, 24}, 
    [19] = {8, 12},
    [20] = {10, 14}, 
    [21] = {20, 28},
    [22] = {32, 32},
    [23] = {36, 36},
    [24] = {48, 48},
    [25] = {100, 100},
  }

  local k = 1
  for i = 26, 5000 do
    local n = i % 25
    if n == 0 then
      n = 25
      k = k + 1
    end
    level_to_gold_gained[i] = {level_to_gold_gained[n][1]*k, level_to_gold_gained[n][2]*k}
  end

  level_to_elite_spawn_weights = {
    [1] = {0},
    [2] = {4, 2},
    [3] = {10},
    [4] = {4, 4},
    [5] = {4, 3, 2},
    [6] = {12},
    [7] = {5, 3, 2},
    [8] = {6, 3, 3, 3},
    [9] = {14},
    [10] = {8, 4},
    [11] = {8, 6, 2},
    [12] = {16},
    [13] = {8, 8},
    [14] = {12, 6},
    [15] = {18},
    [16] = {10, 6, 4},
    [17] = {6, 5, 4, 3},
    [18] = {18},
    [19] = {10, 6},
    [20] = {8, 6, 2},
    [21] = {22},
    [22] = {10, 8, 4},
    [23] = {20, 5, 5},
    [24] = {30},
    [25] = {5, 5, 5, 5, 5, 5},
  }

  local k = 1
  local l = 0.2
  for i = 26, 5000 do
    local n = i % 25
    if n == 0 then
      n = 25
      k = k + 1
      l = l*2
    end
    local a, b, c, d, e, f = unpack(level_to_elite_spawn_weights[n])
    a = (a or 0) + (a or 0)*l
    b = (b or 0) + (b or 0)*l
    c = (c or 0) + (c or 0)*l
    d = (d or 0) + (d or 0)*l
    e = (e or 0) + (e or 0)*l
    f = (f or 0) + (f or 0)*l
    level_to_elite_spawn_weights[i] = {a, b, c, d, e, f}
  end

  level_to_boss = {
    [6] = 'speed_booster',
    [12] = 'exploder',
    [18] = 'swarmer',
    [24] = 'forcer',
    [25] = 'randomizer',
  }

  local bosses = {'speed_booster', 'exploder', 'swarmer', 'forcer', 'randomizer'}
  level_to_boss[31] = 'speed_booster'
  level_to_boss[37] = 'exploder'
  level_to_boss[43] = 'swarmer'
  level_to_boss[49] = 'forcer'
  level_to_boss[50] = 'randomizer'
  local i = 31
  local k = 1
  while i < 5000 do
    level_to_boss[i] = bosses[k]
    k = k + 1
    if k == 5 then i = i + 1 else i = i + 6 end
    if k == 6 then k = 1 end
  end

  level_to_elite_spawn_types = {
    [1] = {'speed_booster'},
    [2] = {'speed_booster', 'shooter'},
    [3] = {'speed_booster'},
    [4] = {'speed_booster', 'exploder'},
    [5] = {'speed_booster', 'exploder', 'shooter'},
    [6] = {'speed_booster'},
    [7] = {'speed_booster', 'exploder', 'headbutter'},
    [8] = {'speed_booster', 'exploder', 'headbutter', 'shooter'},
    [9] = {'shooter'},
    [10] = {'exploder', 'headbutter'},
    [11] = {'exploder', 'headbutter', 'tank'},
    [12] = {'exploder'},
    [13] = {'speed_booster', 'shooter'},
    [14] = {'speed_booster', 'spawner'},
    [15] = {'shooter'},
    [16] = {'speed_booster', 'exploder', 'spawner'},
    [17] = {'speed_booster', 'exploder', 'spawner', 'shooter'},
    [18] = {'spawner'},
    [19] = {'headbutter', 'tank'},
    [20] = {'speed_booster', 'tank', 'spawner'},
    [21] = {'headbutter'},
    [22] = {'speed_booster', 'headbutter', 'tank'},
    [23] = {'headbutter', 'tank', 'shooter'},
    [24] = {'tank'},
    [25] = {'speed_booster', 'exploder', 'headbutter', 'tank', 'shooter', 'spawner'},
  }

  for i = 26, 5000 do
    local n = i % 25
    if n == 0 then
      n = 25
    end
    level_to_elite_spawn_types[i] = level_to_elite_spawn_types[n]
  end

  level_to_shop_odds = {
    [1] = {70, 20, 10, 0},
    [2] = {50, 30, 15, 5},
    [3] = {25, 45, 20, 10},
    [4] = {10, 25, 45, 20},
    [5] = {5, 15, 30, 50},
  }

  get_shop_odds = function(lvl, tier)
    if lvl == 1 then
      if tier == 1 then
        return 70
      elseif tier == 2 then
        return 20
      elseif tier == 3 then
        return 10
      elseif tier == 4 then
        return 0
      end
    elseif lvl == 2 then
      if tier == 1 then
        return 50
      elseif tier == 2 then
        return 30
      elseif tier == 3 then
        return 15
      elseif tier == 4 then
        return 5
      end
    elseif lvl == 3 then
      if tier == 1 then
        return 25
      elseif tier == 2 then
        return 45
      elseif tier == 3 then
        return 20
      elseif tier == 4 then
        return 10
      end
    elseif lvl == 4 then
      if tier == 1 then
        return 10
      elseif tier == 2 then
        return 25
      elseif tier == 3 then
        return 45
      elseif tier == 4 then
        return 20
      end
    elseif lvl == 5 then
      if tier == 1 then
        return 5
      elseif tier == 2 then
        return 15
      elseif tier == 3 then
        return 30
      elseif tier == 4 then
        return 50
      end
    end
  end

  unlevellable_items = {
    'speed_3', 'damage_4', 'shoot_5', 'death_6', 'lasting_7', 'kinetic_bomb', 'porcupine_technique', 'last_stand', 'annihilation', 
    'tremor', 'heavy_impact', 'fracture', 'meat_shield', 'divine_punishment', 'unleash', 'freezing_field', 'burning_field', 'gravity_field',
    'magnetism', 'insurance', 'dividends', 'haste', 'rearm', 'ceremonial_dagger', 'burning_strike', 'lucky_strike', 'healing_strike', 'psycholeak', 'divine_blessing', 'hardening',
  }

  -- steam.userStats.requestCurrentStats()  -- 注释掉Steam统计请求
  new_game_plus = state.new_game_plus or 0
  if not state.new_game_plus then state.new_game_plus = new_game_plus end
  current_new_game_plus = state.current_new_game_plus or new_game_plus
  if not state.current_new_game_plus then state.current_new_game_plus = current_new_game_plus end
  max_units = math.clamp(7 + current_new_game_plus, 7, 12)

  main_song_instance = _G[random:table{'song1', 'song2', 'song3', 'song4', 'song5'}]:play{volume = 0.5}
  main = Main()

  main:add(MainMenu'mainmenu')
  main:go_to('mainmenu')

  --[[
  main:add(BuyScreen'buy_screen')
  main:go_to('buy_screen', run.level or 1, run.units or {}, passives, run.shop_level or 1, run.shop_xp or 0)
  -- main:go_to('buy_screen', 7, run.units or {}, {'unleash'})
  ]]--
  
  --[[
  gold = 10
  run_passive_pool = {
    'centipede', 'ouroboros_technique_r', 'ouroboros_technique_l', 'amplify', 'resonance', 'ballista', 'call_of_the_void', 'crucio', 'speed_3', 'damage_4', 'shoot_5', 'death_6', 'lasting_7',
    'defensive_stance', 'offensive_stance', 'kinetic_bomb', 'porcupine_technique', 'last_stand', 'seeping', 'deceleration', 'annihilation', 'malediction', 'hextouch', 'whispers_of_doom',
    'tremor', 'heavy_impact', 'fracture', 'meat_shield', 'hive', 'baneling_burst', 'blunt_arrow', 'explosive_arrow', 'divine_machine_arrow', 'chronomancy', 'awakening', 'divine_punishment',
    'assassination', 'flying_daggers', 'ultimatum', 'magnify', 'echo_barrage', 'unleash', 'reinforce', 'payback', 'enchanted', 'freezing_field', 'burning_field', 'gravity_field', 'magnetism',
    'insurance', 'dividends', 'berserking', 'unwavering_stance', 'unrelenting_stance', 'blessing', 'haste', 'divine_barrage', 'orbitism', 'psyker_orbs', 'psychosink', 'rearm', 'taunt', 'construct_instability',
    'intimidation', 'vulnerability', 'temporal_chains', 'ceremonial_dagger', 'homing_barrage', 'critical_strike', 'noxious_strike', 'infesting_strike', 'burning_strike', 'lucky_strike', 'healing_strike', 'stunning_strike',
    'silencing_strike', 'culling_strike', 'lightning_strike', 'psycholeak', 'divine_blessing', 'hardening', 'kinetic_strike',
  }
  main:add(Arena'arena')
  main:go_to('arena', 21, 0, {
    {character = 'magician', level = 3},
  }, {
    {passive = 'awakening', level = 3},
  })
  ]]--

  --[[
  main:add(Media'media')
  main:go_to('media')
  ]]--

  trigger:every(2, function()
    if debugging_memory then
      for k, v in pairs(system.type_count()) do
        print(k, v)
      end
      print("-- " .. math.round(tonumber(collectgarbage("count"))/1024, 3) .. "MB --")
      print()
    end
  end)

  --[[
  print(table.tostring(love.graphics.getSupported()))
  print(love.graphics.getRendererInfo())
  local formats = love.graphics.getImageFormats()
  for f, s in pairs(formats) do print(f, tostring(s)) end
  local canvasformats = love.graphics.getCanvasFormats()
  for f, s in pairs(canvasformats) do print(f, tostring(s)) end
  print(table.tostring(love.graphics.getSystemLimits()))
  print(table.tostring(love.graphics.getStats()))
  ]]--
end


function update(dt)
  main:update(dt)

  --[[
  if input.b.pressed then
    -- debugging_memory = not debugging_memory
    for k, v in pairs(system.type_count()) do
      print(k, v)
    end
    print("-- " .. math.round(tonumber(collectgarbage("count"))/1024, 3) .. "MB --")
    print()
  end
  ]]--

  --[[
  if input.n.pressed then
    if main.current.sfx_button then
      main.current.sfx_button:action()
      main.current.sfx_button.selected = false
    else
      if sfx.volume == 0.5 then
        sfx.volume = 0
        state.volume_muted = true
      elseif sfx.volume == 0 then
        sfx.volume = 0.5
        state.volume_muted = false
      end
    end
  end

  if input.m.pressed then
    if main.current.music_button then
      main.current.music_button:action()
      main.current.music_button.selected = false
    else
      if music.volume == 0.5 then
        state.music_muted = true
        music.volume = 0
      elseif music.volume == 0 then
        music.volume = 0.5
        state.music_muted = false
      end
    end
  end
  ]]--

  if input.k.pressed then
    if sx > 1 and sy > 1 then
      sx, sy = sx - 0.5, sy - 0.5
      love.window.setMode(480*sx, 270*sy)
      state.sx, state.sy = sx, sy
      state.fullscreen = false
    end
  end

  if input.l.pressed then
    sx, sy = sx + 0.5, sy + 0.5
    love.window.setMode(480*sx, 270*sy)
    state.sx, state.sy = sx, sy
    state.fullscreen = false
  end

  --[[
  if input.f11.pressed then
    steam.userStats.resetAllStats(true)
    steam.userStats.storeStats()
  end
  ]]--
end


function draw()
  shared_draw(function()
    main:draw()
  end)
end


function open_options(self)
  input:set_mouse_visible(true)
  trigger:tween(0.25, _G, {slow_amount = 0}, math.linear, function()
    slow_amount = 0
    self.paused = true

    if self:is(Arena) then
      self.paused_t1 = Text2{group = self.ui, x = gw/2, y = gh/2 - 108, sx = 0.6, sy = 0.6, lines = {{text = '[bg10]<-, a or m1       ->, d or m2', font = fat_font, alignment = 'center'}}}
      self.paused_t2 = Text2{group = self.ui, x = gw/2, y = gh/2 - 92, lines = {{text = '[bg10]turn left                                            turn right', font = pixul_font, alignment = 'center'}}}
    end

    if self:is(MainMenu) then
      self.ng_t = Text2{group = self.ui, x = gw/2 + 63, y = gh - 50, lines = {{text = '[bg10]current: ' .. current_new_game_plus, font = pixul_font, alignment = 'center'}}}
    end

    self.resume_button = Button{group = self.ui, x = gw/2, y = gh - 225, force_update = true, button_text = self:is(MainMenu) and 'main menu (esc)' or 'resume game (esc)', fg_color = 'bg10', bg_color = 'bg', action = function(b)
      trigger:tween(0.25, _G, {slow_amount = 1}, math.linear, function()
        slow_amount = 1
        self.paused = false
        if self.paused_t1 then self.paused_t1.dead = true; self.paused_t1 = nil end
        if self.paused_t2 then self.paused_t2.dead = true; self.paused_t2 = nil end
        if self.ng_t then self.ng_t.dead = true; self.ng_t = nil end
        if self.resume_button then self.resume_button.dead = true; self.resume_button = nil end
        if self.restart_button then self.restart_button.dead = true; self.restart_button = nil end
        if self.mouse_button then self.mouse_button.dead = true; self.mouse_button = nil end
        if self.dark_transition_button then self.dark_transition_button.dead = true; self.dark_transition_button = nil end
        if self.run_timer_button then self.run_timer_button.dead = true; self.run_timer_button = nil end
        if self.sfx_button then self.sfx_button.dead = true; self.sfx_button = nil end
        if self.music_button then self.music_button.dead = true; self.music_button = nil end
        if self.video_button_1 then self.video_button_1.dead = true; self.video_button_1 = nil end
        if self.video_button_2 then self.video_button_2.dead = true; self.video_button_2 = nil end
        if self.video_button_3 then self.video_button_3.dead = true; self.video_button_3 = nil end
        if self.video_button_4 then self.video_button_4.dead = true; self.video_button_4 = nil end
        if self.quit_button then self.quit_button.dead = true; self.quit_button = nil end
        if self.screen_shake_button then self.screen_shake_button.dead = true; self.screen_shake_button = nil end
        if self.screen_movement_button then self.screen_movement_button.dead = true; self.screen_movement_button = nil end
        if self.cooldown_snake_button then self.cooldown_snake_button.dead = true; self.cooldown_snake_button = nil end
        if self.arrow_snake_button then self.arrow_snake_button.dead = true; self.arrow_snake_button = nil end
        if self.ng_plus_plus_button then self.ng_plus_plus_button.dead = true; self.ng_plus_plus_button = nil end
        if self.ng_plus_minus_button then self.ng_plus_minus_button.dead = true; self.ng_plus_minus_button = nil end
        if self.main_menu_button then self.main_menu_button.dead = true; self.main_menu_button = nil end
        system.save_state()
        if self:is(MainMenu) or self:is(BuyScreen) then input:set_mouse_visible(true)
        elseif self:is(Arena) then input:set_mouse_visible(state.mouse_control or false) end
      end, 'pause')
    end}

    if not self:is(MainMenu) then
      self.restart_button = Button{group = self.ui, x = gw/2, y = gh - 200, force_update = true, button_text = 'restart run (r)', fg_color = 'bg10', bg_color = 'bg', action = function(b)
        self.transitioning = true
        ui_transition2:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        ui_switch2:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        TransitionEffect{group = main.transitions, x = gw/2, y = gh/2, color = state.dark_transitions and bg[-2] or fg[0], transition_action = function()
          slow_amount = 1
          music_slow_amount = 1
          run_time = 0
          gold = 3
          passives = {}
          main_song_instance:stop()
          run_passive_pool = {
            'centipede', 'ouroboros_technique_r', 'ouroboros_technique_l', 'amplify', 'resonance', 'ballista', 'call_of_the_void', 'crucio', 'speed_3', 'damage_4', 'shoot_5', 'death_6', 'lasting_7',
            'defensive_stance', 'offensive_stance', 'kinetic_bomb', 'porcupine_technique', 'last_stand', 'seeping', 'deceleration', 'annihilation', 'malediction', 'hextouch', 'whispers_of_doom',
            'tremor', 'heavy_impact', 'fracture', 'meat_shield', 'hive', 'baneling_burst', 'blunt_arrow', 'explosive_arrow', 'divine_machine_arrow', 'chronomancy', 'awakening', 'divine_punishment',
            'assassination', 'flying_daggers', 'ultimatum', 'magnify', 'echo_barrage', 'unleash', 'reinforce', 'payback', 'enchanted', 'freezing_field', 'burning_field', 'gravity_field', 'magnetism',
            'insurance', 'dividends', 'berserking', 'unwavering_stance', 'unrelenting_stance', 'blessing', 'haste', 'divine_barrage', 'orbitism', 'psyker_orbs', 'psychosink', 'rearm', 'taunt', 'construct_instability',
            'intimidation', 'vulnerability', 'temporal_chains', 'ceremonial_dagger', 'homing_barrage', 'critical_strike', 'noxious_strike', 'infesting_strike', 'burning_strike', 'lucky_strike', 'healing_strike', 'stunning_strike',
            'silencing_strike', 'culling_strike', 'lightning_strike', 'psycholeak', 'divine_blessing', 'hardening', 'kinetic_strike',
          }
          max_units = math.clamp(7 + current_new_game_plus, 7, 12)
          main:add(BuyScreen'buy_screen')
          locked_state = nil
          system.save_run()
          main:go_to('buy_screen', 1, 0, {}, passives, 1, 0)
        end, text = Text({{text = '[wavy, ' .. tostring(state.dark_transitions and 'fg' or 'bg') .. ']restarting...', font = pixul_font, alignment = 'center'}}, global_text_tags)}
      end}
    end

    self.mouse_button = Button{group = self.ui, x = gw/2 - 113, y = gh - 150, force_update = true, button_text = 'mouse control: ' .. tostring(state.mouse_control and 'yes' or 'no'), fg_color = 'bg10', bg_color = 'bg',
    action = function(b)
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      state.mouse_control = not state.mouse_control
      b:set_text('mouse control: ' .. tostring(state.mouse_control and 'yes' or 'no'))
    end}

    self.dark_transition_button = Button{group = self.ui, x = gw/2 + 13, y = gh - 150, force_update = true, button_text = 'dark transitions: ' .. tostring(state.dark_transitions and 'yes' or 'no'),
    fg_color = 'bg10', bg_color = 'bg', action = function(b)
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      state.dark_transitions = not state.dark_transitions
      b:set_text('dark transitions: ' .. tostring(state.dark_transitions and 'yes' or 'no'))
    end}

    self.run_timer_button = Button{group = self.ui, x = gw/2 + 121, y = gh - 150, force_update = true, button_text = 'run timer: ' .. tostring(state.run_timer and 'yes' or 'no'), fg_color = 'bg10', bg_color = 'bg',
    action = function(b)
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      state.run_timer = not state.run_timer
      b:set_text('run timer: ' .. tostring(state.run_timer and 'yes' or 'no'))
    end}

    self.sfx_button = Button{group = self.ui, x = gw/2 - 46, y = gh - 175, force_update = true, button_text = 'sfx volume: ' .. tostring((state.sfx_volume or 0.5)*10), fg_color = 'bg10', bg_color = 'bg',
    action = function(b)
      ui_switch2:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      b.spring:pull(0.2, 200, 10)
      b.selected = true
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      sfx.volume = sfx.volume + 0.1
      if sfx.volume > 1 then sfx.volume = 0 end
      state.sfx_volume = sfx.volume
      b:set_text('sfx volume: ' .. tostring((state.sfx_volume or 0.5)*10))
    end,
    action_2 = function(b)
      ui_switch2:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      b.spring:pull(0.2, 200, 10)
      b.selected = true
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      sfx.volume = sfx.volume - 0.1
      if math.abs(sfx.volume) < 0.001 and sfx.volume > 0 then sfx.volume = 0 end
      if sfx.volume < 0 then sfx.volume = 1 end
      state.sfx_volume = sfx.volume
      b:set_text('sfx volume: ' .. tostring((state.sfx_volume or 0.5)*10))
    end}

    self.music_button = Button{group = self.ui, x = gw/2 + 48, y = gh - 175, force_update = true, button_text = 'music volume: ' .. tostring((state.music_volume or 0.5)*10), fg_color = 'bg10', bg_color = 'bg',
    action = function(b)
      ui_switch2:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      b.spring:pull(0.2, 200, 10)
      b.selected = true
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      music.volume = music.volume + 0.1
      if music.volume > 1 then music.volume = 0 end
      state.music_volume = music.volume
      b:set_text('music volume: ' .. tostring((state.music_volume or 0.5)*10))
    end,
    action_2 = function(b)
      ui_switch2:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      b.spring:pull(0.2, 200, 10)
      b.selected = true
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      music.volume = music.volume - 0.1
      if math.abs(music.volume) < 0.001 and music.volume > 0 then music.volume = 0 end
      if music.volume < 0 then music.volume = 1 end
      state.music_volume = music.volume
      b:set_text('music volume: ' .. tostring((state.music_volume or 0.5)*10))
    end}

    self.video_button_1 = Button{group = self.ui, x = gw/2 - 136, y = gh - 125, force_update = true, button_text = 'window size-', fg_color = 'bg10', bg_color = 'bg', action = function()
      if sx > 1 and sy > 1 then
        ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        sx, sy = sx - 0.5, sy - 0.5
        love.window.setMode(480*sx, 270*sy)
        state.sx, state.sy = sx, sy
        state.fullscreen = false
      end
    end}

    self.video_button_2 = Button{group = self.ui, x = gw/2 - 50, y = gh - 125, force_update = true, button_text = 'window size+', fg_color = 'bg10', bg_color = 'bg', action = function()
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      sx, sy = sx + 0.5, sy + 0.5
      love.window.setMode(480*sx, 270*sy)
      state.sx, state.sy = sx, sy
      state.fullscreen = false
    end}

    self.video_button_3 = Button{group = self.ui, x = gw/2 + 29, y = gh - 125, force_update = true, button_text = 'fullscreen', fg_color = 'bg10', bg_color = 'bg', action = function()
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      local _, _, flags = love.window.getMode()
      local window_width, window_height = love.window.getDesktopDimensions(flags.display)
      sx, sy = window_width/480, window_height/270
      state.sx, state.sy = sx, sy
      ww, wh = window_width, window_height
      love.window.setMode(window_width, window_height)
    end}

    self.video_button_4 = Button{group = self.ui, x = gw/2 + 129, y = gh - 125, force_update = true, button_text = 'reset video settings', fg_color = 'bg10', bg_color = 'bg', action = function()
      local _, _, flags = love.window.getMode()
      local window_width, window_height = love.window.getDesktopDimensions(flags.display)
      sx, sy = window_width/480, window_height/270
      ww, wh = window_width, window_height
      state.sx, state.sy = sx, sy
      state.fullscreen = false
      ww, wh = window_width, window_height
      love.window.setMode(window_width, window_height)
    end}

    self.screen_shake_button = Button{group = self.ui, x = gw/2 - 57, y = gh - 100, w = 110, force_update = true, button_text = '[bg10]screen shake: ' .. tostring(state.no_screen_shake and 'no' or 'yes'), 
    fg_color = 'bg10', bg_color = 'bg', action = function(b)
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      state.no_screen_shake = not state.no_screen_shake
      b:set_text('screen shake: ' .. tostring(state.no_screen_shake and 'no' or 'yes'))
    end}

    self.cooldown_snake_button = Button{group = self.ui, x = gw/2 + 75, y = gh - 100, w = 145, force_update = true, button_text = '[bg10]cooldowns on snake: ' .. tostring(state.cooldown_snake and 'yes' or 'no'), 
    fg_color = 'bg10', bg_color = 'bg', action = function(b)
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      state.cooldown_snake = not state.cooldown_snake
      b:set_text('cooldowns on snake: ' .. tostring(state.cooldown_snake and 'yes' or 'no'))
    end}

    self.arrow_snake_button = Button{group = self.ui, x = gw/2 + 65, y = gh - 75, w = 125, force_update = true, button_text = '[bg10]arrow on snake: ' .. tostring(state.arrow_snake and 'yes' or 'no'),
    fg_color = 'bg10', bg_color = 'bg', action = function(b)
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      state.arrow_snake = not state.arrow_snake
      b:set_text('arrow on snake: ' .. tostring(state.arrow_snake and 'yes' or 'no'))
    end}

    self.screen_movement_button = Button{group = self.ui, x = gw/2 - 69, y = gh - 75, w = 135, force_update = true, button_text = '[bg10]screen movement: ' .. tostring(state.no_screen_movement and 'no' or 'yes'), 
    fg_color = 'bg10', bg_color = 'bg', action = function(b)
      ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
      state.no_screen_movement = not state.no_screen_movement
      if state.no_screen_movement then
        camera.x, camera.y = gw/2, gh/2
        camera.r = 0
      end
      b:set_text('screen movement: ' .. tostring(state.no_screen_movement and 'no' or 'yes'))
    end}

    if self:is(MainMenu) then
      self.ng_plus_minus_button = Button{group = self.ui, x = gw/2 - 58, y = gh - 50, force_update = true, button_text = 'NG+ down', fg_color = 'bg10', bg_color = 'bg', action = function(b)
        ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        b.spring:pull(0.2, 200, 10)
        b.selected = true
        current_new_game_plus = math.clamp(current_new_game_plus - 1, 0, 5)
        state.current_new_game_plus = current_new_game_plus
        self.ng_t.text:set_text({{text = '[bg10]current: ' .. current_new_game_plus, font = pixul_font, alignment = 'center'}})
        max_units = 7 + current_new_game_plus
        system.save_run()
      end}

      self.ng_plus_plus_button = Button{group = self.ui, x = gw/2 + 5, y = gh - 50, force_update = true, button_text = 'NG+ up', fg_color = 'bg10', bg_color = 'bg', action = function(b)
        ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        b.spring:pull(0.2, 200, 10)
        b.selected = true
        current_new_game_plus = math.clamp(current_new_game_plus + 1, 0, new_game_plus)
        state.current_new_game_plus = current_new_game_plus
        self.ng_t.text:set_text({{text = '[bg10]current: ' .. current_new_game_plus, font = pixul_font, alignment = 'center'}})
        max_units = 7 + current_new_game_plus
        system.save_run()
      end}
    end

    if not self:is(MainMenu) then
      self.main_menu_button = Button{group = self.ui, x = gw/2, y = gh - 50, force_update = true, button_text = 'main menu', fg_color = 'bg10', bg_color = 'bg', action = function(b)
        self.transitioning = true
        ui_transition2:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        ui_switch2:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        ui_switch1:play{pitch = random:float(0.95, 1.05), volume = 0.5}
        TransitionEffect{group = main.transitions, x = gw/2, y = gh/2, color = state.dark_transitions and bg[-2] or fg[0], transition_action = function()
          main:add(MainMenu'main_menu')
          main:go_to('main_menu')
        end, text = Text({{text = '[wavy, ' .. tostring(state.dark_transitions and 'fg' or 'bg') .. ']..', font = pixul_font, alignment = 'center'}}, global_text_tags)}
      end}
    end

    self.quit_button = Button{group = self.ui, x = gw/2, y = gh - 25, force_update = true, button_text = 'quit', fg_color = 'bg10', bg_color = 'bg', action = function()
      system.save_state()
      -- steam.shutdown()  -- 注释掉steam关闭
      love.event.quit()
    end}
  end, 'pause')
end


function close_options(self)
  trigger:tween(0.25, _G, {slow_amount = 1}, math.linear, function()
    slow_amount = 1
    self.paused = false
    if self.paused_t1 then self.paused_t1.dead = true; self.paused_t1 = nil end
    if self.paused_t2 then self.paused_t2.dead = true; self.paused_t2 = nil end
    if self.ng_t then self.ng_t.dead = true; self.ng_t = nil end
    if self.resume_button then self.resume_button.dead = true; self.resume_button = nil end
    if self.restart_button then self.restart_button.dead = true; self.restart_button = nil end
    if self.mouse_button then self.mouse_button.dead = true; self.mouse_button = nil end
    if self.dark_transition_button then self.dark_transition_button.dead = true; self.dark_transition_button = nil end
    if self.run_timer_button then self.run_timer_button.dead = true; self.run_timer_button = nil end
    if self.sfx_button then self.sfx_button.dead = true; self.sfx_button = nil end
    if self.music_button then self.music_button.dead = true; self.music_button = nil end
    if self.video_button_1 then self.video_button_1.dead = true; self.video_button_1 = nil end
    if self.video_button_2 then self.video_button_2.dead = true; self.video_button_2 = nil end
    if self.video_button_3 then self.video_button_3.dead = true; self.video_button_3 = nil end
    if self.video_button_4 then self.video_button_4.dead = true; self.video_button_4 = nil end
    if self.screen_shake_button then self.screen_shake_button.dead = true; self.screen_shake_button = nil end
    if self.screen_movement_button then self.screen_movement_button.dead = true; self.screen_movement_button = nil end
    if self.cooldown_snake_button then self.cooldown_snake_button.dead = true; self.cooldown_snake_button = nil end
    if self.arrow_snake_button then self.arrow_snake_button.dead = true; self.arrow_snake_button = nil end
    if self.quit_button then self.quit_button.dead = true; self.quit_button = nil end
    if self.ng_plus_plus_button then self.ng_plus_plus_button.dead = true; self.ng_plus_plus_button = nil end
    if self.ng_plus_minus_button then self.ng_plus_minus_button.dead = true; self.ng_plus_minus_button = nil end
    if self.main_menu_button then self.main_menu_button.dead = true; self.main_menu_button = nil end
    system.save_state()
    if self:is(MainMenu) or self:is(BuyScreen) then input:set_mouse_visible(true)
    elseif self:is(Arena) then input:set_mouse_visible(state.mouse_control or false) end
  end, 'pause')
end


function love.run()
  return engine_run({
    game_name = 'SNKRX',
    window_width = 'max',
    window_height = 'max',
  })
end
