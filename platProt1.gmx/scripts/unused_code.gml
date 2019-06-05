if (rowsNum > 1)
{
    iTilePointX = ds_grid_get(tilePointsData, 0, 1); fTilePointX = ds_grid_get(tilePointsData, 0, 0)
    absDeltaX = fTilePointX - iTilePointX
    iTilePointY = ds_grid_get(tilePointsData, 1, 1); fTilePointY = ds_grid_get(tilePointsData, 1, 0)
    absDeltaY = fTilePointY - iTilePointY
    angle = arctan(absDeltaY / absDeltaX)
    if (angle < 0) angle = 2*pi - angle
}
else
{

}
