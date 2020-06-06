/// @arg0 array of elements
/// @arg1 alpha

list = argument0;
if (is_array(list))
{
	var len = array_length_1d(list);
	for (var i = 0; i < len; i++)
	{
		i.alpha = argument1;
	}
}