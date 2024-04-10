package com.example.loginform

import android.util.Log
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material3.Button
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

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
        modifier = Modifier.fillMaxSize().background(color = Color.White),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {

        Image(
            painter = painterResource(id = R.drawable.form_icon),
            contentDescription = "Login Image",
            modifier = Modifier.size(200.dp)
            )

        Text(text = "Welcome", fontSize = 28.sp, fontWeight = FontWeight.Bold, modifier = Modifier.clickable {  })

        Spacer(modifier = Modifier.height(4.dp))
        Text(text = "Login to your Account")

        //Input interface
        Spacer(modifier = Modifier.height(16.dp))
        OutlinedTextField(value = email, onValueChange = { email = it}, label = {
            Text(text = "Email Address")
        })

        Spacer(modifier = Modifier.height(16.dp))
        OutlinedTextField(value = password, onValueChange = { password = it}, label = {
            Text(text = "Password")
        }, visualTransformation = PasswordVisualTransformation())
        //End of input

        //Submit Btn
        Spacer(modifier = Modifier.height(16.dp))
        Button(onClick = { Log.i("Credential", "Email : $email Password : $password") }) {
            Text(text = "Login")
        }

        Spacer(modifier = Modifier.height(32.dp))
        TextButton(onClick = { /*TODO*/ }) {
            Text(text = "Forgot Password")
        }
        TextButton(onClick = { /*TODO*/ }) {
            Text(text = "Or sign in with")
        }

        //Layoutin opt login
        Row (
            modifier = Modifier
                .fillMaxSize()
                .padding(10.dp),
            horizontalArrangement = Arrangement.SpaceEvenly
        ) {
            Image(painter = painterResource(id = R.drawable.gmail), contentDescription = "Gmail icon",
                modifier = Modifier
                    .size(40.dp)
                    .clickable { }
                )
            Image(painter = painterResource(id = R.drawable.facebook), contentDescription = "Facebook icon",
                modifier = Modifier
                    .size(40.dp)
                    .clickable { }
                )
            Image(painter = painterResource(id = R.drawable.twitter), contentDescription = "Twitter icon",
                modifier = Modifier
                    .size(40.dp)
                    .clickable { }
                )

        }
    }
}