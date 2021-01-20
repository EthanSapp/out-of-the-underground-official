//randomize();

spd = 3;
grav = 0.3;
vsp = 0;
hsp = 0;
//state = playerStateFree;

speedHit = 2;
distanceRecoil = 64;
distanceHit = 36;
distanceRecoilHeight = 12;
z = 0;
moveDistanceRemaing = distanceRecoil;

hitByAttack = -1;

animationEndScript = -1;

_collided = false;

xvel = 0;
yvel = 0;

enemySpawnDelay = 450;
level2BossTimeMain = 90;
level2BossTime = 60;

ableToFly = false;

//wait = 1/room_speed * 60;

//if (global.targetX != -1){
//	x = global.targetX;
//	y = global.targetY;
//	direction = global.targetDirection;
//}