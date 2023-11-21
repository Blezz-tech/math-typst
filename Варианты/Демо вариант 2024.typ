#import "/lib/my.typ": *

= Демо вариант 2024

// == Задание 1.1

// #task("Задание")

// Треугольник ABC вписан в окружность с центром O. Угол BAC равен $32 degree$. Найдите угол BOC. Ответ дайте в градусах.

// #include "/Картинки/Демо вариант 2024/Задание 01.1.typ"

// #answer("Решение")

// $angle "ABC" = 1/2 ⌒ "BC" $

// $⌒ "BC" = 64degree$

// $angle "BOC" = ⌒ "BC" $ 

// Ответ: $64 degree$


// === Задание 1.2

// #task("Задание")

// Площадь треугольника ABC равна $24$, DE - средняя линия, паралельная стороне AB. Найдите площадь треугольника CDE.

// #include "/Картинки/Демо вариант 2024/Задание 01.2.typ"

// #answer("Решение")

// $angle$ BAC - Общий

// $D E = 1/2 A B$

// $k = 1/2$

// $S_"CDE" dot S_"ABC" = k^2 = (1/2)^2$

// $S_"CDE" = S_"ABC"/4 = 24/4 = 6$

// Ответ: $6$


// == Задание 1.3

// #task("Задание")

// Площадь треугольника ABC равна $24$, DE - средняя линия, паралельная стороне AB. Найдите площадь треугольника CDE.

// #include "/Картинки/Демо вариант 2024/Задание 01.3.typ"

// #answer("Решение")

// $angle "ABC" = angle "DBA" + angle D B C = 13 degree + 13 degree = 26 degree$

// $angle "BCD" = 180 degree - angle A B C = 180 degree - 26 degree = 154 degree$

// Ответ: $154 degree$


// == Задание 1.4 (Сделать картинки)

// #task("Задание")

// Площадь треугольника ABC равна $24$, DE - средняя линия, паралельная стороне AB. Найдите площадь треугольника CDE.

// // #include "/Картинки/Демо вариант 2024/Задание 01.4.typ"
// #image("/Картинки/Демо вариант 2024/Задание 01.4.png", width: 50%)

// #answer("Решение")

// $S = 18 dot 24 = 27 dot h$

// $h = (18 dot 24) / 27 = 16$

// Ответ: $154 degree$


// == Задание 2.1

// #task("Задание")

// На координатной плоскости изображены векторы $arrow(a)$ и $arrow(b)$. Найдите скалярное произведение $arrow(a) dot arrow(b)$. 

// #include "/Картинки/Демо вариант 2024/Задание 02.1-1.typ"

// #answer("Решение")

// #include "/Картинки/Демо вариант 2024/Задание 02.1-2.typ"

// $
// overline(|a|) &= (5-1;8-2) = (4;6) \
// overline(|b|) &= (11-5;3-5) = (6;-2) \
// overline(a) dot overline(b) &= x_1 dot x_2 + y_1 dot y_2 = 4 dot 6 + 6 dot (-2) = 24 - 12 = 12
// $

// Ответ: $12$


// == Задание 2.2

// #task("Задание")

// Даны векторы $arrow(a)(1;2), arrow(b)(-3;6), arrow(c)(4;-2)$. Найдите длину вектора $arrow(a) - arrow(b) + arrow(c)$.

// #answer("Решение")

// 1. $arrow(a) - arrow(b) + arrow(c)$ \
//    $arrow(d)(1+3+4;2-6-2)$ \
//    $arrow(d)(9;-6)$
// 2. $arrow(|d|) = sqrt(x^2 + y^2) = sqrt(8^2 + (-6)^2) = sqrt(100) = 10$

// Ответ: $10$


// == Задание 3.1

// #task("Задание")

// B первом цилиндрическом сосуде уровень жидкости достигает $16$ см. Эту жидкость перелили во второй цилиндрический сосуд, диаметр основания которого в $2$ раза больше диаметра основания первого. На какой высоте будет находиться уровень жидкости во втором сосуде? Ответ дайте в сантиметрах.

// #include "/Картинки/Демо вариант 2024/Задание 03.1.typ"

// #answer("Решение")

// $V = S_"Осн" dot h = pi R^2 dot 16 = pi (2R)^2 dot h$

// $R^2 dot 16 = 4 R^2 h$

// $h=4$

// Ответ: $4$


// == Задание 3.2 (Сделать картинки)

// #task("Задание")

// Площадь боковой поверхности треугольной призмы равна 24. Через среднюю линию основания призмы проведена плоскость, параллельная боковому ребру. Найдите площадь боковой поверхности отсечённой треугольной призмы.

// // #include "/Картинки/Демо вариант 2024/Задание 03.1.typ"
// #image("/Картинки/Демо вариант 2024/Задание 03.2-1.png", width: 50%)

// #answer("Решение")

// // #include "/Картинки/Демо вариант 2024/Задание 03.2.typ"
// #image("/Картинки/Демо вариант 2024/Задание 03.2-2.png", width: 50%)

// $S_"бок" = S_1 + S_2 + S_3 = 2a h + 2b h + 2c h = 2h (a + b + c) = 24$ 

// $h (a + b + c) = 12$

// $S_"бок отс" = a h + b h + c h = h(a+b+c+) = 12$

// Ответ: $12$


// == Задание 3.3 (Сделать картинки)

// #task("Задание")

// Через точку, лежащую на высоте прямого кругового конуса и делящую её в отношении $1:2$, считая от вершины конуса, проведена плоскость, параллельная его основанию и делящая конус на две части. Каков объём той части конуса, которая примыкает к его основанию, если объём всего конуса равен $54$?

// // #include "/Картинки/Демо вариант 2024/Задание 03.3-1.typ"
// #image("/Картинки/Демо вариант 2024/Задание 03.3-1.png", width: 50%)

// #answer("Решение")

// // #include "/Картинки/Демо вариант 2024/Задание 03.3-1.typ"
// #image("/Картинки/Демо вариант 2024/Задание 03.3-2.png", width: 50%)

// $(S O_1)/(O O_1) = 1 / 2$

// $h_1/h = 1 / 3 = k$

// $V_1 / V = k^3 = 1/27$

// $V_1 = V / 27 = 54 / 27 = 2$

// $V_"ниж" = V - V_1 = 54 - 2 = 52$

// Ответ: $52$


// == Задание 4.1

// #task("Задание")

// В сборнике билетов по биологии всего $25$ билетов. Только в двух билетах встречается вопрос о грибах. На экзамене выпускнику достаётся один случайно выбранный билет из этого сборника. Найдите вероятность того, что в этом билете будет вопрос о грибах.

// #answer("Решение")

// $2/25 = 8/100= 0,08$

// Ответ: $0,08$


// == Задание 4.2 (Сделать картинки)

// #task("Задание")

// Вероятность того, что мотор холодильника прослужит более $1$ года, равна $0,8$. авероятность того, что он прослужит более $2$ лет, равна $0,6$. Какова вероятность того, что мотор прослужит более $1$ года, но не более $2$ лет?

// #answer("Решение")

// // #include "/Картинки/Демо вариант 2024/Задание 04.2.typ"
// #image("/Картинки/Демо вариант 2024/Задание 04.2.png", width: 50%)

// $P = 0,2 + x + 0,6 = 1$

// $x = 1 - 0,8 = 0,2$

// Ответ: $0,2$


// == Задание 5.1

// #task("Задание")

// Симметричную игральную кость бросили $3$ раза. Известно, что в сумме выпало $6$ очков. Какова вероятность события «хотя бы раз выпало $3$ очка»?

// #answer("Решение")

// $A in {1,2,3,4,5,6}$

// $overline(a b c) - "число", "где" a, b, c in A$

// Причем $a + b + c = 6$

// Исключим числа 5, 6, так как

// $cases( delim: "[",
//   5 + 1 + 1 > 6,
//   6 + 1 + 1 > 6 
// )$

// Перечислим все комбинации, где $a + b + c equiv 0 (mod 6)$:

// #table(
//   [312, 321, 123, 132, 213, 231],
//   [222],
//   [411, 141, 114]
// )

// Всего чисел 10

// Нужных нам 6

// $P = 6/10 = 0,6$

// Ответ: $0,6$


// == Задание 5.2

// #task("Задание")

// В городе $48%$ взрослого населения – мужчины. Пенсионеры составляют $12,6%$
// взрослого населения, причём доля пенсионеров среди женщин равна $15%$. Для
// социологического опроса выбран случайным образом мужчина, проживающий
// в этом городе. Найдите вероятность события «выбранный мужчина является
// пенсионером». 

// #answer("Решение")

// Пусть в городе 1000 человек.

// 1. $48%$ м $arrow 480$ чел \
//    $52%$ ж $arrow 520$ чел
// 2. $12,6%$ м + ж $arrow 126$ чел пенсионеров всего
// 3. $15%$ ж $arrow 78$ чел пенсионеров женщин
// 4. $126-78 = 48$ чел пенсионеров мужчин
// 5. $48/480 = 1/10 = 0,1$

// Ответ: $0,1$


// == Задание 6.1

// #task("Задание")

// Найдите корень уравнения $3^(x-5) = 81$.


// #answer("Решение")

// $
// 3^(x-5) &= 3^4 \
// x - 5   &= 4   \
// x       &= 9
// $

// Ответ: $9$


// == Задание 6.2

// #task("Задание")

// Найдите корень уравнения $sqrt(3x + 49) = 10$.

// #answer("Решение")

// $
// 3x + 49 &= 100 \
// 3x      &= 51  \
// x       &= 17
// $

// Ответ: $17$


// == Задание 6.3

// #task("Задание")

// Найдите корень уравнения $log_8(5x + 47) = 3$.

// #answer("Решение")

// $
// log_8(5x+47) &= 3 dot log_8 8 = log_8 8^2 \
// 5x + 47 &= 8^3 = 512 \
// 5x &= 465 \
// x &= 93
// $

// Ответ: $93$


// == Задание 6.4

// #task("Задание")

// Решите уравнение $sqrt(2x+3) = х$. Если корней окажется несколько, то в ответе запишите наименьший из них.

// #answer("Решение")

// ОДЗ: $x gt.eq.slant 0$

// $
// 2x + 3 &= x^2 \
// x^2 -2x -3 &= 0 \
// x_(1;2) &= cases( delim: "["
//                 , -&1\, - "посторонний"
//                 ,  &3\;)
// $

// Ответ: $3$


// == Задание 7.1

// #task("Задание")

// Найдите $sin 2 alpha$, если $cos alpha = 0,6$ и $pi < alpha < 2pi$.

// #answer("Решение")

// $
// sin^2 alpha + cos^2 alpha &= 1 \
// sin^2 alpha &= 0,64 \
// sin alpha &= 0,8 \
// sin 2alpha &= 2 dot (-0,8) dot 0,6 = -0,96
// $

// Ответ: $-0,96$


// == Задание 7.2

// #task("Задание")

// Найдите значение выражения $16log_7 root(4, 7)$.

// #answer("Решение")

// $16log_7 4^(1/4) = 16 dot 1/4 log_7 7 = 4$

// Ответ: $4$


// == Задание 7.3

// #task("Задание")

// Найдите значение выражение $4^(1/5) dot 16^(9/10)$.

// #answer("Решение")

// $4^(2/10) dot 4^(18/10) = 4^(20/10) = 4^2 = 16$

// Ответ: $16$


// == Задание 8.1 (сделать картинки)

// #task("Задание")

// На рисунке изображён график дифференцируемой функции $y=f(x)$.

// На оси абсцисс отмечены девять точек $x_1,x_2,dots, x_9$.

// // #include "/Картинки/Демо вариант 2024/Задание 8.1-1.typ"
// #image("/Картинки/Демо вариант 2024/Задание 8.1-1.png", width: 50%)

// Найдите все отмеченные точки, в которых производная функции $f(x)$ отрицательна. В ответе укажите количество этих точек.

// #answer("Решение")

// // #include "/Картинки/Демо вариант 2024/Задание 08.1-2.typ"
// #image("/Картинки/Демо вариант 2024/Задание 08.1-2.png", width: 50%)

// Ответ: $4$


// == Задание 8.2 (сделать и доделать картинки)

// #task("Задание")

// На рисунке изображён график функции $y=f(x)$ и касательаня к нему в точке с абсциссой $x_0$. Найдите значение производной функции $f(x)$ в точке $x_0$.

// #include "/Картинки/Демо вариант 2024/Задание 08.2-1.typ"

// #answer("Решение")

// // #include "/Картинки/Демо вариант 2024/Задание 08.2-2.typ"

// Написать решение

// 1. Тангенс угла

// 2. $dots$

// Ответ: $-1,75$


// == Задание 9.1

// #task("Задание")

// Локатор батискафа, равномерно погружающегося вертикально вниз, испускает ультразвуковой сигнал частотой $749$ МГц. Приёмник регистрирует частоту сигнала, отражённого от дна океана. Скорость погружения батискафа (в м/с) и частоты связаны соотношением $ nu = c dot (f - f_0)/(f + f_0), $ где $c = 1500$ м/с – скорость звука в воде, $f_0$ – частота испускаемого сигнала (в МГц), $f$ – частота отражённого сигнала (в МГц). Найдите частоту отражённого сигнала (в МГц), если батискаф погружается со скоростью $2$ м/с. 

// #answer("Решение")

// $
// cancel(2) &= cancel(1500) dot (f - 749) / (f + 729) \
// f + 749 &= 750 (f - 749) \
// f + 749 &= 750f - 749 dot 750 \
// cancel(749f) &= 751 dot cancel(749f) \
// f = 751
// $

// Ответ: $751$


// == Задание 10.1

// #task("Задание")

// Весной катер идёт против течения реки в $1 2/3$ раза медленнее, чем по течению. Летом течение становится на $1$ км/ч медленнее. Поэтому летом катер идёт против течения в $1 1/2$ раза медленнее, чем по течению. Найдите скорость течения весной (в км/ч).

// #answer("Решение")

// #table(
//   columns: (1fr, 1fr, 1fr, 1fr),
//   inset: 10pt,
//   align: horizon,
//   [], [*По течению*], [*Против течения*], [*Течение*],
//   [Скорость Весной], [ $x+y$ ], [ $x-y$ ], [ $y$ ],
//   [Скорость Летом], [ $x+y-1$ ], [ $x-y+1$ ], [ $y-1$ ]
// )

// $
// cases(
//   x+y = 5/3 (x-y),
//   x+y-1=3/2 (x-y+1)
// )
// $

// 1. $3x+3y=5x-5y$ \
//    $2x = 8y$ \
//    $x = 4y$
// 2. $4y + y - 1 = 3/2 (4y-y+1)$ \
//    $5y-1 = 3/2 (3y+1)$ \
//    $10y-2=9y+3$ \
//    $y=5$ \
//    $x=20$ \

// Ответ: $5$


// == Задание 10.2

// #task("Задание")

// Смешав $45%$-ный и $97%$-ный растворы кислоты и добавив $10$ кг чистой воды, получили $62%$-ный раствор кислоты. Если бы вместо $10$ кг воды добавили $10$ кг $50%$-ного раствора той же кислоты, то получили бы $72%$-ный раствор кислоты. Сколько килограммов 45%-ного раствора использовали для получения смеси?

// #answer("Решение")

// $
// k_1 dot & m_1 + k_2 dot & m_2 +& dots = k_3 dot & m_3 \
//         & m_1 +         & m_2 +& dots =         & m_3
// $

// $
// cases(
//   0\,45 dot m_1 + 0\,97 * m_2 + 0\,10       &= 0\,62 dot (m_1 + m_2 + 10) "  " (1),
//   0\,45 dot m_1 + 0\,97 * m_2 + 0\,5 dot 10 &= 0\,72 dot (m_1 + m_2 + 10) "  " (2)
// )
// $

// 1. $5 = 0,1 dot (m_1 + m_2 + 10)$ \
//    $10 + m_1 + m_2 = 50$ \
//    $m_1 + m_2 = 40$ \
//    $m_2 = 40 - m_1$
// 2. $0,45 dot m_1 + 0,97 dot (40 - m_1) = 0,62 dot 50$ \
//    $0,45 dot m_1 + 38,8 - 0,97 m_1 = 31$ \
//    $7,8 = 0,52 m_1$ \
//    $52 m_1 = 780$ \
//    $m_1 = 15$

// Ответ: $15$


// == Задание 10.3

// #task("Задание")

// Автомобиль, движущийся с постоянной скоростью $70$ км/ч по прямому шоссе, обгоняет другой автомобиль, движущийся в ту же сторону с постоянной скоростью $40$ км/ч. Каким будет расстояние (в километрах) между этими автомобилями через $15$ минут после обгона? 

// #answer("Решение")

// #table(
//   columns: (1fr, 1fr, 1fr, 1fr),
//   inset: 10pt,
//   align: horizon,
//   [*№*], [*Скорость, км/ч*], [*Время, ч*], [*Расстояние, км*],
//   [ $1$ ], [ $70$ ], [ $1/4$ ], [ $S_1$ ],
//   [ $2$ ], [ $40$ ], [ $1/4$ ], [ $S_2$ ]
// )

// $Delta S$ - ?

// 1. $S_1 = 70/4=17,5$
// 2. $S-2 = 40/4 = 10$
// 3. $Delta S = S_1 - S_2 = 17,5 - 10 = 7,5$

// Ответ: $7,5$


// == Задание 11.1

// #task("Задание")

// На рисунке изображён график функции вида $f(x) = a x^2 + b x + c,$ где числа $a,$  $b$ и $c$ — целые. Найдите значение $f(12)$. 

// #image("/Картинки/Демо вариант 2024/Задание 11.1-1.png", width: 30%)

// #answer("Решение")

// #image("/Картинки/Демо вариант 2024/Задание 11.1-2.png", width: 30%)

// $
// y & = (x+4)^2 - 3 \
// y(12) &= (4 - 12)^2 -3 = 64-3 = 61
// $

// Ответ: $61$


// == Задание 12.1

// #task("Задание")

// Найдите наименьшее значение функции $ y = 9x - 9 ln(x + 11) + 7 $ на отрезке $[ -10,5; 0 ]$.

// #answer("Решение")


// 1. $y^' = 9-9(x+11)^' 1/(x+11)$ \
//    $y^' = 9-9/(x+11) = 0$
// 2. $9=9/(x+11)$ \
//    $x+11 = 1$ \
//    $x = -10 in [-10,5;0]$
// 3. $f(-10,5) = 9 dot (-10,5) - 9 dot ln(11 - 10,5) + 7 = -94,5 - 9 ln 1/2 + 7$
// 4. $f(-10) = 9 dot (-10) - 9 ln(11 - 10) + 7 = - 90 - 9 ln 1 + 7 = -83 $
// 5. $f(0) = 0 - 9 ln (0 + 11) + 7$

Ответ: $83$


== Задание 12.2

#task("Задание")

Найдите точку максимума функции $y = (x + 8)^2 dot e^(3 - x)$.

#answer("Решение")



Ответ: $$


== Задание 12.3

#task("Задание")



#answer("Решение")



Ответ: $$


== Задание 12.1

#task("Задание")



#answer("Решение")



Ответ: $$


== Задание 12.1

#task("Задание")



#answer("Решение")



Ответ: $$


== Задание 12.1

#task("Задание")



#answer("Решение")



Ответ: $$