package com.example.loginform


import android.util.Log
import androidx.compose.foundation.border
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.paint
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController

@Composable
fun PointKuScreen(navController: NavController) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .paint(
                painter = painterResource(id = R.drawable.base_pointku),
                contentScale = ContentScale.FillBounds
            ),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(
            text = "Hallo, Fahmi Muhazir",
            color = Color.DarkGray,
            fontWeight = FontWeight(500),
            fontSize = 14.sp
        )

        //Input interface

        Spacer(modifier = Modifier.height(16.dp))
        Box(
            modifier = Modifier
                .padding(horizontal = 50.dp, vertical = 10.dp)
                .fillMaxWidth()
                .border(
                    width = 1.dp,
                    color = Color.DarkGray,
                    shape = RoundedCornerShape(10.dp)
                )
                .padding(horizontal = 10.dp, vertical = 10.dp)

        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(text = "Total Pointku")

                Text(text = "12.000")
            }
        }
        //Submit Btn
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = {
                navController.navigate("Scan Barcode")
            },
            colors = ButtonDefaults.buttonColors(Color(0xFF409FEF)),
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 54.dp),
            shape = RoundedCornerShape(size = 8.dp),

            ) {
            Text(text = "Scan Barcode", color = Color.White)
        }
        Spacer(modifier = Modifier.height(200.dp))

    }
}
