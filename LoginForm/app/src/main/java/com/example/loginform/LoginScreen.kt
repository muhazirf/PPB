package com.example.loginform

import android.util.Log
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.size
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp

@Composable
fun LoginScreen() {

    var email by remember {
        mutableStateOf("")
    }

    var password by remember {
        mutableStateOf("")
    }

    //Layout column and full width, center to center
    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(color = Color(0xFF013880)),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {

        Image(
            painter = painterResource(id = R.drawable.form_icon),
            contentDescription = "Login Image",
            modifier = Modifier.size(240.dp)
            )

        Spacer(modifier = Modifier.height(4.dp))
        Text(
            text = "Login to your Account",
            color = Color.White
            )

        //Input interface
        Spacer(modifier = Modifier.height(16.dp))
        OutlinedTextField(value = email, onValueChange = { email = it}, label = {
            Text(text = "Email Address", color = Color.White)
        })

        Spacer(modifier = Modifier.height(16.dp))
        OutlinedTextField(value = password, onValueChange = { password = it}, label = {
            Text(text = "Password",color = Color.White)
        }, visualTransformation = PasswordVisualTransformation())
        //End of input

        //Submit Btn
        Spacer(modifier = Modifier.height(16.dp))
        Button(
            onClick = { Log.i("Credential", "Email : $email Password : $password") },
            colors = ButtonDefaults.buttonColors(Color(0xFFf1c40f))
        ) {
            Text(text = "Login",color = Color.White)
        }

        Spacer(modifier = Modifier.height(32.dp))
        TextButton(onClick = { /*TODO*/ }) {
            Text(text = "Forgot Password",color = Color.White)
        }

    }
}