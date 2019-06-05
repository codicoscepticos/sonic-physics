// Input Arguments
//
tileLayer_ = argument0
sensorPointX_ = argument1
sensorPointY_ = argument2
tileHeight_ = argument3
//

while true
{
    tileIndex_ = tile_layer_find(tileLayer_, sensorPointX_, sensorPointY_)
    if (tileIndex_ == -1) {returnValues_ = undefined; break}
    
    tileBackground_ = tile_get_background(tileIndex_)
    tileSolidity_ = tilesData.tilesSolidities[tileBackground_]
    tileAngle_ = tilesData.tilesAngles[tileBackground_]
    tileHeights_ = tilesData.tilesHeights[tileBackground_]
    
    tilePointX_ = sensorPointX_
    tileX_ = tile_get_x(tileIndex_); tileY_ = tile_get_y(tileIndex_)
    tilePointHeight_ = tileHeights_[tilePointX_ - tileX_]
    tilePointY_ = tileY_ + (tileHeight_ - tilePointHeight_)
    
    returnValues_[0] = tileSolidity_
    returnValues_[1] = tileX_
    returnValues_[2] = tileY_
    returnValues_[3] = tileAngle_
    returnValues_[4] = tilePointX_
    returnValues_[5] = tilePointY_
    returnValues_[6] = tilePointHeight_
    break
}
return returnValues_
//
