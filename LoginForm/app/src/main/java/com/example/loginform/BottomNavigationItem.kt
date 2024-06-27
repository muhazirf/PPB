package com.example.loginform

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AccountCircle
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Notifications
import androidx.compose.ui.graphics.vector.ImageVector

//initializing the data class with default parameters
data class BottomNavigationItem(
    val label : String = "",
    val icon : ImageVector = Icons.Filled.Home,
    val route : String = ""
) {

    //function to get the list of bottomNavigationItems
    fun bottomNavigationItems() : List<BottomNavigationItem> {
        return listOf(
            BottomNavigationItem(
                label = "Home",
                icon = Icons.Filled.Home,
                route = Screen.Dashboard.rout
            ),
            BottomNavigationItem(
                label = "News",
                icon = Icons.Filled.Notifications,
                route = Screen.News.rout
            ),
            BottomNavigationItem(
                label = "Jadwal",
                icon = Icons.Filled.DateRange,
                route = Screen.PointKu.rout
            ),
            BottomNavigationItem(
                label = "Profile",
                icon = Icons.Filled.AccountCircle,
                route = Screen.Profile.rout
            ),
        )
    }
}