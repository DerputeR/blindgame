/// @description Insert description here
// You can write your code in this editor

if (global.gamePaused)
{
	accumulator = min(1, accumulator + 6*global.dt_steady);
}
else accumulator = max(0, accumulator - 6*global.dt_steady);

len = array_length_1d(elements);
alpha = lerp(0, 1, accumulator);

for (var i = 0; i < len; i++)
{
	elements[@i].alpha = alpha;
}

if (alpha == 0) instance_destroy(self, true);