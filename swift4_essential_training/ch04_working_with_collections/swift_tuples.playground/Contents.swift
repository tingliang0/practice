//: Playground - noun: a place where people can play

import UIKit

// Simple tuple
var uppercutAttack: (String, Int, Bool) = ("Upper Cut Smash", 25, true)
var (attackName, damageDealt, rechargeable) = uppercutAttack

// Naming tuple values
var planetSmashAttack = (moveName: "Planet Smash", damage: 25, isRechargeable: true)
planetSmashAttack.damage
planetSmashAttack.1

// Naming values with type annotation
var shieldStompAttack: (name: String, dm: Int, canRecharge: Bool)
shieldStompAttack = ("Shield Stomp", 35, false)
shieldStompAttack.canRecharge
shieldStompAttack.2


