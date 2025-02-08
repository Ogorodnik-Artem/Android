package com.example.weightconverterapp;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    private EditText weightInput;
    private Button convertButton;
    private TextView resultText;
    private RadioGroup fromUnitGroup, toUnitGroup;

    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        weightInput = findViewById(R.id.weightInput);
        convertButton = findViewById(R.id.convertButton);
        resultText = findViewById(R.id.resultText);
        fromUnitGroup = findViewById(R.id.fromUnitGroup);
        toUnitGroup = findViewById(R.id.toUnitGroup);

        convertButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                convertWeight();
            }
        });
    }

    private void convertWeight() {
        int fromUnitId = fromUnitGroup.getCheckedRadioButtonId();
        int toUnitId = toUnitGroup.getCheckedRadioButtonId();

        if (fromUnitId == -1 || toUnitId == -1) {
            resultText.setText("Выберите единицы измерения!");
            return;
        }

        String input = weightInput.getText().toString();

        if (input.isEmpty()) {
            resultText.setText("Введите вес!");
            return;
        }

        double weight = Double.parseDouble(input);

        if (weight <= 0) {
            resultText.setText("Вес должен быть больше нуля!");
            return;
        }

        String fromUnit = ((RadioButton) findViewById(fromUnitId)).getText().toString();
        String toUnit = ((RadioButton) findViewById(toUnitId)).getText().toString();

        double result = 0.0;

        if (fromUnit.equals("Килограмм")) {
            if (toUnit.equals("Фунт")) {
                result = weight * 2.20462;
            } else if (toUnit.equals("Пуд")) {
                result = weight * 0.061;
            } else if (toUnit.equals("Лот")) {
                result = weight / 0.0128;
            } else if (toUnit.equals("Килограмм")) {
                result = weight;
            }
        } else if (fromUnit.equals("Фунт")) {
            if (toUnit.equals("Килограмм")) {
                result = weight * 0.453592;
            } else if (toUnit.equals("Пуд")) {
                result = weight / 40.0;
            } else if (toUnit.equals("Лот")) {
                result = weight * 32;
            } else if (toUnit.equals("Фунт")) {
                result = weight;
            }
        } else if (fromUnit.equals("Пуд")) {
            if (toUnit.equals("Килограмм")) {
                result = weight * 16.38;
            } else if (toUnit.equals("Фунт")) {
                result = weight * 36.11;
            } else if (toUnit.equals("Лот")) {
                result = weight * 1280;
            } else if (toUnit.equals("Пуд")) {
                result = weight;
            }
        } else if (fromUnit.equals("Лот")) {
            if (toUnit.equals("Килограмм")) {
                result = weight * 0.0128;
            } else if (toUnit.equals("Фунт")) {
                result = weight * 0.0625;
            } else if (toUnit.equals("Пуд")) {
                result = weight / 1280;
            } else if (toUnit.equals("Лот")) {
                result = weight;
            }
        }

        resultText.setText(String.format("Результат: %.2f %s", result, toUnit));
    }
}
