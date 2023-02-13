class RestaurantInfo {
  final String name;
  final String image;
  final String text;
  final String quality;

  const RestaurantInfo({
    this.name,
    this.image,
    this.text,
    this.quality,
  });
}

const allRestaurantInfo = [
  RestaurantInfo(
    name: 'Ajisen Ramen',
    image: 'images/ajisen.png',
    text:
        'Ajisen Ramen Ajisen Ramen located at AMK Hub Level 2, beside the escalator',
    quality: 'Quality: Very Good',
  ),
  RestaurantInfo(
    name: 'McDonald\'s',
    image: 'images/mcdonald.png',
    text: 'Mcdonald\'s located outside AMK Hub Level 1, beside a coffee shop',
    quality: 'Quality: Extremely Bad',
  ),
  RestaurantInfo(
    name: 'Mos Burger',
    image: 'images/mosburger.png',
    text: 'Mos Burger located at AMK Hub Level 1, beside Pepper Lunch',
    quality: 'Quality: Excellent',
  ),
  RestaurantInfo(
    name: 'Swensens',
    image: 'images/swensens.png',
    text: 'Swensens located at AMK Hub Basement 2, next to StarBucks',
    quality: 'Quality: Good',
  ),
  RestaurantInfo(
    name: 'Eighteen Chefs',
    image: 'images/18chef.png',
    text:
        '18 Chefs located at the highest level of AMK Hub, next to the Arcade and Cinema',
    quality: 'Quality: Very Bad',
  ),
  RestaurantInfo(
    name: 'Subway',
    image: 'images/subway.jpg',
    text: 'Subway located at AMK Hub level 1, beside Pepper Lunch',
    quality: 'Quality: Good',
  ),
];
