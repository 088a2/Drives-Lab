% First
s = tf("s");
G = 1 / (s^2 + 10 * s + 20);

T = feedback(G, 1);
step(T)

% Second
s = tf("s");
G = 1 / (s^2 + 10 * s + 20);
H = 1;

T = feedback(G, H);
step(T, [0:.01:2])

% Third
s = tf("s");
G = 1 / (s^2 + 10 * s + 20);
kp = 50;
C = pid(kp);

T = feedback(C * G, 1);
step(T, [0:.01:2])

% Fourth
s = tf("s");
G = 1 / (s^2 + 10 * s + 20);
kp = 300;
C = pid(kp);

T = feedback(C * G, 1);
step(T, [0:.01:2])

hold on

% Fifth
s = tf("s");
G = 1 / (s^2 + 10 * s + 20);
kp = 300; ki = 300; kd = 10;

C = pid(kp, ki, kd);
T = feedback(C * G, 1);
step(T, [0:.01:2])

s=tf("s");
G = 1/(s^2 +10*s+20);
kp=300; ki=300;
C=pid(kp,ki);
T = feedback(C*G,1);
step(T,[0:.01:2])

hold on
