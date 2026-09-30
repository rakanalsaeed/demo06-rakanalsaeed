# SWE 463 - Demo06: Navigation and Layout Widgets

## Guided Student Demo - 100 Points

This demo starts as a working Flutter app. Complete **6 tasks in order**. In every task, most code is already given. You will either **FILL** a small missing part or **MODIFY** existing code.

| Task | Topic | Points |
|---|---|---:|
| 1 | Bottom Navigation | 15 |
| 2 | Tabs | 15 |
| 3 | External Link | 15 |
| 4 | Expanded and Flexible | 15 |
| 5 | Card and ListTile | 20 |
| 6 | ListView and GridView | 20 |
| | **Total** | **100** |

## Before Task 1

Open a terminal in the folder that contains `pubspec.yaml` and run:

```bash
flutter pub get
flutter run
```

The first screen should show **SWE 463 - Demo06** and two buttons: **Part 1 - Navigation** and **Part 2 - Layout & Collections**.

> If `url_launcher` is not found, run `flutter clean`, then `flutter pub get`, then run the app again. The dependency is already included in `pubspec.yaml`.

---

# Part 1 - Navigation

## Task 1 - Bottom Navigation (15 points)

**File:** `lib/screens/navigation_lab_screen.dart`

### Goal
Create three bottom destinations: **Home**, **Tabs**, and **Links**.

### Step 1A - MODIFY the page list
Find `TASK 1A TODO`. Replace the three `_StarterPage(...)` entries with:

```dart
NavigationHomePage(),
TabsScreen(),
ExternalLinkScreen(),
```

**Why?** `_pages[0]`, `_pages[1]`, and `_pages[2]` will match the three bottom buttons.

### Step 1B - FILL the BottomNavigationBar
Find `TASK 1B TODO`. The pattern is already provided in comments.

Fill the two `???` values:

```dart
currentIndex: _selectedIndex,
```

and inside `setState`:

```dart
_selectedIndex = index;
```

Then add these two items after the provided Home item:

```dart
BottomNavigationBarItem(icon: Icon(Icons.tab), label: 'Tabs'),
BottomNavigationBarItem(icon: Icon(Icons.link), label: 'Links'),
```

Finally, replace the temporary `SafeArea` bottom area with your completed `BottomNavigationBar`.

### Check
Run/hot reload. Home should appear first. Tapping **Tabs** and **Links** must change the body.

### Hint
`setState()` tells Flutter to rebuild after `_selectedIndex` changes.

### Try it
Temporarily remove `setState()` and tap another item. Restore it afterward.

---

## Task 2 - Tabs (15 points)

**File:** `lib/screens/tabs_screen.dart`

### Goal
Create three synchronized tabs: **Overview**, **Code**, and **Tips**.

### Step 2A - MODIFY the starter screen
Find `TASK 2 TODO`. Replace the temporary `Scaffold` with the `DefaultTabController` code already provided in the comments.

### Step 2B - FILL two missing tabs
Overview is already given. Add:

```dart
Tab(icon: Icon(Icons.code), text: 'Code'),
Tab(icon: Icon(Icons.lightbulb_outline), text: 'Tips'),
```

### Step 2C - FILL two matching pages
Add these to `TabBarView.children`:

```dart
TabContent(
  icon: Icons.code,
  title: 'Code',
  text: 'DefaultTabController keeps TabBar and TabBarView synchronized.',
),
TabContent(
  icon: Icons.lightbulb_outline,
  title: 'Tips',
  text: 'The number of tabs must match the number of TabBarView children.',
),
```

### Check
Open **Part 1 -> Tabs**. Tap or swipe among all three tabs.

### Important idea
These three numbers must agree: controller `length: 3`, three `Tab`s, and three `TabBarView` children.

---

## Task 3 - External Link (15 points)

**File:** `lib/screens/external_link_screen.dart`

### Goal
Open Flutter documentation in the browser.

### Step 3 - MODIFY one line
Find `TASK 3 TODO`. Replace:

```dart
final opened = false;
```

with the provided launch code:

```dart
final opened = await launchUrl(
  _flutterUrl,
  mode: LaunchMode.externalApplication,
);
```

Do not remove the SnackBar code below it.

### Check
Open **Part 1 -> Links** and press **Open Flutter Docs**. The browser should open `https://docs.flutter.dev/`.

### Hint
`launchUrl` is asynchronous, so the method uses `Future<void>` and `await`.

---

# Part 2 - Layout & Collections

## Task 4 - Expanded and Flexible (15 points)

**File:** `lib/screens/expanded_flexible_screen.dart`

### Goal
Make two boxes share the available row width in a **1:2 ratio**.

### Step 4A - MODIFY the first box
Find `TASK 4A TODO`. Replace the first fixed-width `Container` with the `Expanded(flex: 1, ...)` code already shown in the comments.

### Step 4B - MODIFY the second box
Wrap the teal box in:

```dart
Expanded(
  flex: 2,
  child: Container(
    color: Colors.teal,
    child: const Center(child: Text('flex: 2')),
  ),
),
```

### Check
The teal area should be about twice as wide as the indigo area.

### Hint
`flex: 1` and `flex: 2` divide the remaining Row space into 3 shares: 1 share + 2 shares.

### Try it
Temporarily change the first `Expanded` to `Flexible`, observe, then restore `Expanded`.

---

## Task 5 - Card and ListTile (20 points)

**File:** `lib/screens/listtile_card_screen.dart`

### Goal
Replace a manually built profile row with Material widgets and simple interactions.

### Step 5A - MODIFY the profile
Find `TASK 5 TODO`. Replace the temporary bordered `Container` with the provided `Card` + `ListTile` scaffold.

The profile must contain:
- leading person avatar
- title `Sara Ahmed`
- subtitle `sara@kfupm.edu.sa`
- trailing favorite icon

### Step 5B - FILL the favorite action
Inside the provided `onPressed`, add:

```dart
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(content: Text('Favorite pressed')),
);
```

### Step 5C - FILL the tile action
Inside `onTap`, add:

```dart
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(content: Text('Sara selected')),
);
```

### Check
Tap the card and then the heart icon. You should see two different SnackBars.

### Hint
`Card` provides the Material surface; `ListTile` provides the standard leading/title/subtitle/trailing arrangement.

---

## Task 6 - ListView and GridView (20 points)

**File:** `lib/screens/lists_grids_screen.dart`

### Goal
Use the same `topics` list to generate both a scrolling list and a grid.

### Step 6A - FILL ListView.builder
Find `TASK 6A TODO`. Replace its placeholder with the provided `Expanded + ListView.builder` scaffold.

Fill:

```dart
itemCount: topics.length,
```

and:

```dart
title: Text(topics[index]),
```

Run the app now. You should see numbered topic rows.

### Step 6B - FILL GridView.builder
Find `TASK 6B TODO`. Replace its placeholder with the provided `Expanded + GridView.builder` scaffold.

Fill:

```dart
itemCount: topics.length,
```

and:

```dart
child: Center(child: Text(topics[index])),
```

Keep `crossAxisCount: 2`.

### Check
The top half shows the topics as a vertical list. The bottom half shows the same topics in a two-column grid.

### Hint
`itemBuilder` gives you an `index`. Use that index to read `topics[index]`. Both builders reuse the same data instead of writing eight widgets manually.

---

# Final Output Checklist

When all six tasks are complete, your app should have the same behavior as the instructor solution:

- **Part 1:** bottom navigation with Home, Tabs, Links.
- **Tabs:** Overview, Code, Tips all work.
- **Links:** Open Flutter Docs launches the browser.
- **Part 2 / Expanded:** indigo and teal boxes use a 1:2 ratio.
- **Card:** Sara's profile appears in a Card/ListTile and both interactions show SnackBars.
- **Collections:** the same eight topics appear in both a ListView and a two-column GridView.

Run a final check:

```bash
flutter analyze
flutter test
flutter run
```

## Suggested commits

```text
Task 1: implement bottom navigation
Task 2: implement tabs
Task 3: launch external link
Task 4: use Expanded flex layout
Task 5: build interactive profile card
Task 6: build list and grid
```

**Finish one task, test it, then move to the next task.**
