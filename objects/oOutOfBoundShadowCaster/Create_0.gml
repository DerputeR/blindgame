/// @desc Create shadow caster polygon

// Inherit the parent event
event_inherited();

// Create a sprite polygon for this instance
polygon = polygon_from_instance(id);

// This isa static shadow caster
flags |= eShadowCasterFlags.Static;