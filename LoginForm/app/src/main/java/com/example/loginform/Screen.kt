package com.example.loginform


sealed class Screen(val rout: String) {
    object Login : Screen("login")
    object Dashboard : Screen("dashboard")
    object PointKu : Screen("pointku")
    object News : Screen("berita")
    object Profile : Screen("profile")
}
