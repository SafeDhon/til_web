import 'package:flutter/material.dart';
import 'package:flutter_til_web/common/widgets/responsive/responsive_design.dart';
import 'package:flutter_til_web/routes/app_routes.dart';
import 'package:flutter_til_web/routes/routes.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "",
      initialRoute: TRoutes.responsiveDesignTutorialScreen,
      getPages: TAppRoute.pages,
      unknownRoute: GetPage(
          name: '/page-not-found',
          page: () => const Scaffold(
                body: Center(
                  child: Text('Page Not Found'),
                ),
              )),
    );
  }
}

class ResponsiveDesignScreen extends StatelessWidget {
  const ResponsiveDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(24),
            child: TResponsiveWidget(
                desktop: Desktop(), tablet: Tablet(), mobile: Mobile())),
      ),
    );
  }
}

class Desktop extends StatelessWidget {
  const Desktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 450,
                  color: Colors.blue.withAlpha((255 * 0.3).round()),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Box1"),
                  )),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 217,
                      color: Colors.yellow.withAlpha((255 * 0.3).round()),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Box2"),
                      )),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 217,
                            color: Colors.red.withAlpha((255 * 0.3).round()),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Box3"),
                            )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 217,
                            color: Colors.green.withAlpha((255 * 0.3).round()),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Box4"),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 217,
                  color: Colors.red.withAlpha((255 * 0.3).round()),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Box5"),
                  )),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 217,
                  color: Colors.red.withAlpha((255 * 0.3).round()),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Box6"),
                  )),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class Tablet extends StatelessWidget {
  const Tablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 450,
                  color: Colors.blue.withAlpha((255 * 0.3).round()),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Box1"),
                  )),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 217,
                      color: Colors.yellow.withAlpha((255 * 0.3).round()),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Box2"),
                      )),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 217,
                            color: Colors.red.withAlpha((255 * 0.3).round()),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Box3"),
                            )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 217,
                            color: Colors.green.withAlpha((255 * 0.3).round()),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text("Box4"),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 217,
            color: Colors.red.withAlpha((255 * 0.3).round()),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Box5"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 217,
            color: Colors.red.withAlpha((255 * 0.3).round()),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Box6"),
            )),
          ),
        ),
      ],
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 450,
            color: Colors.blue.withAlpha((255 * 0.3).round()),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Box1"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 217,
            color: Colors.yellow.withAlpha((255 * 0.3).round()),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Box2"),
            )),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 217,
                  color: Colors.red.withAlpha((255 * 0.3).round()),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Box3"),
                  )),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 217,
                  color: Colors.green.withAlpha((255 * 0.3).round()),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Box4"),
                  )),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 217,
            color: Colors.red.withAlpha((255 * 0.3).round()),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Box5"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 217,
            color: Colors.red.withAlpha((255 * 0.3).round()),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Box6"),
            )),
          ),
        ),
      ],
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ),
                );
              },
              child: const Text("default"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Get.to(() => SecondScreen()),
              child: const Text("getx"),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/second-screen');
              },
              child: const Text("default Named"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/second-screen');
              },
              child: const Text("getx Named"),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/second-screen',
                    arguments: 'Getx is fun with Safe');
              },
              child: const Text("getx pass data"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/second-screen');
              },
              child: const Text("pass data in url"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/second-screen/1234');
              },
              child: const Text("pass data in url"),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/second-screen?device=phone&id=354&name=Enzo',
                    arguments: 'Getx is fun');
              },
              child: const Text("pass data in url with arguments"),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Get.arguments ?? ''),
            Text('Device = ${Get.parameters['device'] ?? ''}'),
            Text('ID = ${Get.parameters['id'] ?? ''}'),
            Text('Name = ${Get.parameters['name'] ?? ''}'),
            Text('UserID = ${Get.parameters['userId'] ?? ''}'),
          ],
        ),
      ),
    );
  }
}
